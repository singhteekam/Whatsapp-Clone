import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left:25.0, right: 25.0),
        child: new Center(
          child: new Text("To start calling contacts who have WhatsApp,tap icon at the bottom of your screen.",
            style: new TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
