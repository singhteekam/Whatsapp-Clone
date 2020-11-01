import 'package:flutter/material.dart';
import 'package:whatsapp/pages/story_page_view.dart';
import 'package:whatsapp/pages/story_page_view2.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation:0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://www.ukvoipforums.com/styles/FLATBOOTS/theme/images/user4.png"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                            Icons.add,color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Viewed updates",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://s3.r29static.com/bin/entry/9e6/340x408,85/2172764/image.webp"),
                    ),
                    title: Text("Yogesh Bhai",style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Check my Status"),
                    onTap: ()=>Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>StoryPageView(),
                    )),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://i.pinimg.com/originals/01/7e/1b/017e1b3f7614d2e5a00805dbea22506d.jpg"),
                    ),
                    title: Text("Angry Bird",style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("32 minutes ago"),
                    onTap: ()=>Navigator.push(context,MaterialPageRoute(
                      builder: (context)=>StoryPageView2(),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
