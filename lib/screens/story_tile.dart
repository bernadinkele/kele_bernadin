import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/App/palette.dart';

class StoryTile extends StatelessWidget {
  const StoryTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: getWidth(12)),
      child: Column(
        children: [
         Stack(
           children: [
             CircleAvatar(
               radius: getSize(40),
               backgroundImage: const AssetImage("assets/img/117892192.png"),
             ),
            Positioned(
            right: 0,
                bottom: 0,
                child:  Container(
              padding: EdgeInsets.all(getSize(4)),
              decoration: BoxDecoration(
                  color: Pallete.primary,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Icon(Icons.add, color: Colors.white, size: getSize(14),),
            ))
           ],
         ),
          const Gap(4),
          Text(
            'Your story',
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
