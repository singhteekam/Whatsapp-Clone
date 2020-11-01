import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

import 'main.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.red,accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator
        .of(context)
        .pushReplacement(new MaterialPageRoute(builder: (BuildContext context) => WhatsAppHome(cameras))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white10
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: new NetworkImage("https://whatsappbrand.com/wp-content/themes/whatsapp-brc/images/WhatsApp_Logo_1.png",scale: 50,),
                          radius: 150.0,
                        )
                      ],
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}

