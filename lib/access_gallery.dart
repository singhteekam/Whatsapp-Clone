import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class AccessGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserOptions(),
    );
  }
}

class UserOptions extends StatefulWidget {
  @override
  _UserOptionsState createState() => _UserOptionsState();
}

class _UserOptionsState extends State<UserOptions> {

  File galleryFile;
  File cameraFile;



  @override
  Widget build(BuildContext context) {
    imageSelectorGallery() async {
      galleryFile= await ImagePicker.pickImage(
        source:ImageSource.gallery,
      );
      print("You selected Gallery Image"+galleryFile.path);
      setState(() {

      });
    }

    imageSelectorCamera() async {
      cameraFile= await ImagePicker.pickImage(source: ImageSource.camera);
      print("You selected camera Image"+cameraFile.path);
      setState(() {

      });
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text("Select Image"),
      ),

      body: new Builder(
          builder: (BuildContext context){
            return new Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new RaisedButton(
                    child: new Text("Select from Gallery"),
                    onPressed: imageSelectorGallery
                ),
                new RaisedButton(
                    child: new Text("Select from Camera"),
                    onPressed: imageSelectorCamera
                ),
                displaySelectedFile(galleryFile),
                displaySelectedFile(cameraFile)
              ],
            );
          }
      ),
    );
  }

  Widget displaySelectedFile(File file){
    return new SizedBox(
      height: 200.0,
      width: 300.0,
      child: file==null?new Text("Nothing Selected"):new Image.file(file),
    );
  }
}
