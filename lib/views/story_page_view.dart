import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/models/story_model.dart';
import 'package:kele_bernadin/models/user_model.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoriesPageView extends StatefulWidget {
  const StoriesPageView({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  State<StoriesPageView> createState() => _StoriesPageViewState();
}

class _StoriesPageViewState extends State<StoriesPageView> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, getHeight(20)), child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),),
      body: Stack(
        children: [
          StoryView(
            indicatorHeight: IndicatorHeight.small,
            storyItems: widget.user.stories.map((e) {
              if (e.type == StoryTye.text) {
                return StoryItem.text(
                  title: e.content,
                  backgroundColor: e.bgColor,
                  textStyle: TextStyle(
                    fontFamily: e.content,
                    fontSize: 40,
                  ),
                );
              } else if (e.type == StoryTye.img) {
                return StoryItem.pageImage(
                    controller: storyController, url: e.content);
              } else {
                return StoryItem.pageVideo(e.content,
                    controller: storyController);
              }
            }).toList(),
            onStoryShow: (storyItem, index) {},
            onComplete: () {
              final index = users.indexOf(widget.user);
              if (widget.user == users.last) {
                Navigator.pop(context);
              } else {

                Navigator.pushReplacement(

                    context,
                  _createRoute(users[index + 1])
                    );
              }
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: storyController,
          ),
          Positioned(
            top:24,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Gap(24),
                    CircleAvatar(
                      radius: getSize(20),
                      backgroundImage: AssetImage(widget.user.profilLink),
                    ),
                    const Gap(8),
                    Text(
                      widget.user.name.toLowerCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(14),
                        fontFamily: 'JMontserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(4),
                    Text(
                      '11h',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(14),
                        fontFamily: 'JMontserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                //Icon(Icons.more_vert, color: Colors.white, size: getSize(24),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Route _createRoute(UserModel user) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation){
      return StoriesPageView(user: user);
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
