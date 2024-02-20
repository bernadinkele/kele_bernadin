import 'package:flutter/material.dart';
import 'package:kele_bernadin/models/story_model.dart';

class UserModel {
  final String name;
  final String profilLink;
  final List<StoryModel> stories;
  UserModel(
      {required this.name, required this.profilLink, required this.stories});
}

final users = [
  UserModel(name: "Davido", profilLink: "assets/icons/davido-1.png", stories: [
    StoryModel(
        content: "Let's chill in London",
        type: StoryTye.text,
        bgColor: Colors.red),
    StoryModel(
        content:
            "https://www.syracuse.edu/assets/original_images/london-large-image_07-29-202116-16-53.jpg",
        type: StoryTye.img,
        bgColor: Colors.red),
    StoryModel(
        content:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        type: StoryTye.video,
        bgColor: Colors.red),
  ]),
  UserModel(
      name: "Ed Sheeran",
      profilLink: "assets/icons/ed-sheeran-GettyImages-494227430_1600.jpg",
      stories: [
        StoryModel(
            content: "Chilllllllllllllllllllllllllll",
            type: StoryTye.text,
            bgColor: Colors.green),
      ]),
  UserModel(
      name: "Obama",
      profilLink: "assets/icons/1980e0e20090904102213582.jpg",
      stories: [
        StoryModel(
            content:
                "https://richardhetu.com/wp-content/uploads/2024/02/tonight-show-michelle-obama.jpeg",
            type: StoryTye.img,
            bgColor: Colors.red),
        StoryModel(
            content: "Family", type: StoryTye.text, bgColor: Colors.pink),
      ]),
  UserModel(name: "Coca", profilLink: "assets/icons/coca-15l.jpg", stories: [
    StoryModel(
        content:
            "https://assets.afcdn.com/story/20230728/2224888_w1200h1200c1cx600cy315cxt0cyt0cxb1200cyb630.jpg",
        type: StoryTye.img,
        bgColor: Colors.red),
    StoryModel(
        content:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
        type: StoryTye.video,
        bgColor: Colors.red),

  ]),
];
