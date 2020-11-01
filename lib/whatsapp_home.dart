import 'package:flutter/material.dart';
import 'package:whatsapp/pages/callscreen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chatscreen.dart';
import 'package:whatsapp/pages/statusscreen.dart';

import 'access_contacts.dart';
import 'access_gallery.dart';
import 'constants.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome(this.cameras);
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;
  var fabIcon = Icons.message;
  @override
  void initState(){
    super.initState();
    _tabController =new TabController(length: 4, vsync: this,initialIndex: 1);
    _tabController.addListener((){
      setState(() {
        switch(_tabController.index){
          case 0:
            fabIcon=Icons.camera_enhance;
            break;
          case 1:
            fabIcon=Icons.message;
            break;
          case 2:
            fabIcon=Icons.camera_alt;
            break;
          case 3:
            fabIcon=Icons.add_call;
            break;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon:new Icon(Icons.camera_alt)),
              new Tab(text:"CHATS"),
              new Tab(text: "STATUS",),
              new Tab(text:"CALLS",),
            ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),

          PopupMenuButton<String>(
            onSelected: choiceAction ,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
          children: <Widget>[
          new CameraScreen(widget.cameras),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ]
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(fabIcon,color: Colors.white,),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: ()=>
            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new AccessGallery())),
      ),
    );
  }
  void choiceAction(String choice){
    print("More_vert");
  }
}