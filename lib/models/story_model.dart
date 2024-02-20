import 'dart:ui';

enum StoryTye { text, img, video}

class StoryModel {
  final StoryTye type;
  final String content;
  final Color bgColor;

  StoryModel(
      {required this.content, required this.type, required this.bgColor});
}


