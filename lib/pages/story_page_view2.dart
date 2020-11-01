import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
class StoryPageView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller=StoryController();
    final List<StoryItem> storyItems=[
      StoryItem.text("Hello everyone",Colors.blue),
      StoryItem.pageImage(NetworkImage("https://i.pinimg.com/originals/8f/a9/11/8fa911b42d3de9b5cb949507c80dc928.jpg"),
      caption: "HELLO"),
      StoryItem.pageImage(NetworkImage("https://www.indiasopinion.in/wp-content/uploads/2018/08/37206612_1620386498074319_3092791304011120640_n.jpg"),),
      StoryItem.pageGif("https://media.giphy.com/media/WnIu6vAWt5ul3EVcUE/giphy.gif",
          caption: "GIF",
          imageFit: BoxFit.contain),
      StoryItem.pageImage(NetworkImage("https://ficklemind.com/wp-content/uploads/2019/01/katrina-kahif-top-actress-list.jpg"),
      caption: "Katrina"),
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
