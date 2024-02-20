import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import '../App/palette.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: getHeight(8), vertical: getHeight(8)).copyWith(
        bottom: getHeight(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IntrinsicWidth(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: getWidth(16), vertical: getHeight(4)),
              decoration:  BoxDecoration(
                  color:Pallete.primary,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Text(
                    '250',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(16),
                      // fontFamily: 'JMontserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(4),
                  Image.asset("assets/icons/coins.png", width: getSize(24),)
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.search, color: Colors.black, size: getSize(34), ),
              const Gap(16),
              Stack(
                children: [
                  Icon(Icons.favorite_border_outlined,color: Colors.black, size: getSize(34), ),
                  Positioned(
                    right: 0,
      
                    child: Container(
                      height: getSize(16),
                      width: getSize(16),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              const Gap(16),
              Stack(
                children: [
                  Image.asset("assets/icons/chat.png", width: getSize(34),),
                  Positioned(
                    right: 0,
                   bottom: 10,
                    child: Container(
                     padding: EdgeInsets.all(getSize(4)),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                      ),
                      child: const Center(child: Text("2", style: TextStyle(
                        color: Colors.white
                      )),)
                    ),
                  )
                ],
              ),
      
            ],
          )
      
        ],
      ),
    );
  }
}
