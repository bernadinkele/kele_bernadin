import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/models/publication_model.dart';
import 'package:like_button/like_button.dart';

import '../App/palette.dart';

class PublicationTile extends StatefulWidget {
  const PublicationTile({Key? key, required this.publicationModel}) : super(key: key);
  final PublicationModel publicationModel;

  @override
  State<PublicationTile> createState() => _PublicationTileState();
}

class _PublicationTileState extends State<PublicationTile> {
 int nbreliked = 50;
  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return Column(
      children: [
        Container(
          height: getHeight(400),
          padding: EdgeInsets.all(getSize(8)),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      widget.publicationModel.imagePath),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFFF5765), shape: BoxShape.circle),
                        padding: const EdgeInsets.all(1.5),
                        child: CircleAvatar(
                          backgroundImage:
                           AssetImage(widget.publicationModel.user.profilLink),
                          radius: getSize(24),
                        ),
                      ),
                      const Gap(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.publicationModel.user.name}_uidesigner',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getFontSize(14),
                              fontFamily: 'JMontserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Hawayien |Arijit Singh | Original',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getFontSize(14),
                              fontFamily: 'JMontserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: getWidth(8),
                            vertical: getHeight(2)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border:
                            Border.all(color: Colors.white, width: 2)),
                        child: Text(
                          'follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getFontSize(14),
                            // fontFamily: 'JMontserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Gap(8),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: getSize(24),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Gap(8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          LikeButton(
                            size: getSize(24),
                            likeCount: 70,

                            likeBuilder: (isLiked) => isLiked
                                ? Row(
                              children: [
                                Icon(
                                  Icons.favorite_sharp,
                                  size: getSize(24),
                                  color: Colors.red,
                                ),

                              ],
                            )
                                : Icon(
                              Icons.favorite_outline_sharp,
                              size: getSize(24),
                            ),
                          ),

                        
                        ],
                      ),
                      const Gap(16),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_text,
                            size: getSize(24),
                            color: Colors.black,
                          ),
                          const Gap(4),
                          Text(
                            '528',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getFontSize(16),
                              fontFamily: 'JMontserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const Gap(16),
                      Icon(
                        Icons.send_outlined,
                        size: getSize(24),
                        color: Colors.black,
                      )
                    ],
                  ),
                  LikeButton(
                    size: getSize(24),
                    likeBuilder: (isLiked) => isLiked
                        ? Icon(
                      Icons.bookmark,
                      color: Colors.red,
                      size: getSize(24),
                    )
                        : Icon(
                      Icons.bookmark_border,
                      size: getSize(24),
                    ),
                  ),
                ],
              ),
              const Gap(8),
              RichText(
                  text: TextSpan(text: "", children: [
                    TextSpan(
                      text: "asfiya_uidesigner",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(14),
                        fontFamily: 'JMontserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                      " Prayers of thanks and special thanksgiving ceremonies are common among most religions after harvests and at other",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(14),
                        //fontFamily: 'JMontserrat',
                        //fontWeight: FontWeight.bold,
                      ),
                    )
                  ])),
              const Gap(8),
              Text(
                '25 min ago',
                style: TextStyle(
                  color: Pallete.gray,
                  fontSize: getFontSize(14),
                  fontFamily: 'JMontserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
