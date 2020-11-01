import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
class StoryPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=StoryController();
    final List<StoryItem> storyItems=[
      StoryItem.text("Hi",Colors.red),
      StoryItem.pageImage(NetworkImage("https://image.shutterstock.com/image-photo/mountains-during-sunset-beautiful-natural-260nw-407021107.jpg"),),
      StoryItem.pageGif("https://media.giphy.com/media/WnIu6vAWt5ul3EVcUE/giphy.gif",
      caption: "GIF",
      imageFit: BoxFit.contain),
      StoryItem.pageImage(NetworkImage("https://www.skymetweather.com/content/wp-content/uploads/2019/11/Delhi-NCR-Air-Pollution-c.jpg"),
      caption: "Air Pollution in Ghaziabad"),
    ];
    return Material(
      child: StoryView(
        storyItems,
        controller:controller,
        inline:false,
        repeat:false
      ),
    );
  }
}
