import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/models/user_model.dart';
import 'package:kele_bernadin/views/story_page_view.dart';

class StoryTileFilled extends StatelessWidget {
  const StoryTileFilled({Key? key, required this.user}) : super(key: key);
final UserModel user;
  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getWidth(12)),
      child: Column(
        children: [
         GestureDetector(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) =>StoriesPageView(user: user),));
           },
           child: Container(
             padding: EdgeInsets.all(getSize(2)),
             decoration: const BoxDecoration(
                 color: Color(0xFFD6F08B),
                 shape: BoxShape.circle
             ),
             child:  Container(
               padding: EdgeInsets.all(getSize(4)),
               decoration: const BoxDecoration(
                   color: Colors.white,
                   shape: BoxShape.circle
               ),
               child: CircleAvatar(
                 radius: getSize(36),
                 backgroundImage: AssetImage(user.profilLink),
               ),
             ),
           ),
         ),
          const Gap(4),
          Text(
            user.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: getFontSize(16),
              // fontFamily: 'JMontserrat',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
