import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/palette.dart';

import '../App/app_config.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {

  int current = 0;
  @override
  Widget build(BuildContext context) {
    final items = [
"assets/img/Support_Young_African_Professional.jpg","assets/img/Adebayor_Bj.jpg","assets/img/117892192.png"
    ];
    final allItems = items.map((e) => CircleAvatar(
      backgroundImage: AssetImage(e),
    )).toList().asMap().map((key, item){
      const left= 28;
      final value= Container(
        margin: EdgeInsets.only(left: (left*key).toDouble()),
        width: 42,
        height: 42,
        decoration: const ShapeDecoration(

          shape: OvalBorder(
            side: BorderSide(width: 2, color: Colors.white),
          ),

        ),
        child: item,
      );
      return MapEntry(key, value);
    }).values.toList();
    AppConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        title: Text(
          'Maya Shanya',
          style: TextStyle(
            color: Colors.black,
            fontSize: getFontSize(24),
            fontFamily: 'JMontserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            "assets/img/Category.png",
            width: getSize(24),
            height: getSize(24),
          ),
          const Gap(24)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/img/Group 18923.png",
                    width: getSize(100),
                  ),
                  const Gap(24),
                  const Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfilContentItem(
                        title: "Photos",
                        content: "123",
                      ),
                      ProfilContentItem(
                        content: "22.5K",
                        title: "Followers",
                      ),
                      ProfilContentItem(
                        content: "128",
                        title: "Follows",
                      ),
                    ],
                  )),
                  const Gap(24)
                ],
              ),
              const Gap(8),
              Text(
                'Maya Shanya',
                style: TextStyle(
                  color: Pallete.primary,
                  fontSize: getFontSize(24),
                  fontFamily: 'JMontserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '@mayashanaya',
                style: TextStyle(
                  color: Pallete.gray,
                  fontSize: getFontSize(16),
                  fontFamily: 'JMontserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Gap(4),

              Text(
                'Designer by profession loves travel and great foodie would love to connect with the like minded people',
                style: TextStyle(
                  color: Pallete.secondary,
                  fontSize: getFontSize(14),
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(16),
              Row(
                children: [
                  Stack(
                    children: allItems.reversed.toList(),
                  ),
                  const Gap(8),
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                            text: "",
                            style: TextStyle(
                              color: Pallete.secondary,
                              fontSize: getFontSize(16),

                              fontWeight: FontWeight.w700,
                            ),
                            children: [
                              TextSpan(
                                  text: "Followed by ",
                                  style: TextStyle(
                                    color: Pallete.secondary,
                                    fontSize: getFontSize(16),
                                    fontFamily: 'Josefin Sans',
                                    fontWeight: FontWeight.bold,
                                  )),
                          TextSpan(
                              text: " Shreya, Riya ",
                              style: TextStyle(
                                color: Pallete.secondary,
                                fontSize: getFontSize(16),
                               //fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                              text: "and",
                              style: TextStyle(
                                color: Pallete.secondary,
                                fontSize: getFontSize(16),
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w700,
                              )),
                          TextSpan(
                              text: " Ravi ",
                              style: TextStyle(
                                color: Pallete.secondary,
                                fontSize: getFontSize(16),
                               // fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w700,
                              )),
                          TextSpan(
                              text: "and",
                              style: TextStyle(
                                color: Pallete.secondary,
                                fontSize: getFontSize(16),
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w700,
                              )),
                          TextSpan(
                              text: " 1 other",
                              style: TextStyle(
                                color: Pallete.secondary,
                                fontSize: getFontSize(16),
                                //fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w700,
                              ))
                        ])),
                  )
                ],
              ),
              const Gap(24),
              Row(
                children: [
                  Expanded(child: Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                        color: Pallete.primary,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getFontSize(14),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),),
                  const Gap(16),
                  Expanded(child: Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Pallete.primary, width: 1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        'Message',
                        style: TextStyle(
                          color: Pallete.secondary,
                          fontSize: getFontSize(14),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),),
                  const Gap(16),
                  Expanded(child: Container(
                    width: double.infinity,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Pallete.primary, width: 1),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Pallete.secondary,
                          fontSize: getFontSize(14),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),),
                ],
              ),
              const Gap(16),
              const Divider(),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Item(
                    text: "Feeds",
                    isSelected: current == 0,
                    function: () {
                      setState(() {
                        current = 0;
                      });
                    },
                  ),
                  Item(
                    text: "Video",
                    isSelected: current == 1,
                    function: () {
                      setState(() {
                        current = 1;
                      });
                    },
                  ),
                  Item(
                    text: "Tagged",
                    isSelected: current == 2,
                    function: () {
                      setState(() {
                        current = 2;
                      });
                    },
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: getSize(24),
                  )
                ],
              ),
              const Gap(24),
              SizedBox(
                height: getHeight(300),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/img/french_montain_by_bancomphotos_d4ardpn-pre.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(24)),
                        )),
                    const Gap(16),
                    Expanded(
                        child: Column(
                      children: [
                        Flexible(
                            child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/img/bernese-mountain-dog.jpg"),
                                  fit: BoxFit.fitWidth),
                              borderRadius: BorderRadius.circular(24)),
                        )),
                        const Gap(8),
                        Flexible(
                            child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/img/portada-wp-burguer.jpeg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(24)),
                        )),
                        const Gap(8),
                        Flexible(
                            child: Container(
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/img/young-johnny-depp.png"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(24)),
                        ))
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.text,
      required this.isSelected,
      required this.function})
      : super(key: key);
  final bool isSelected;
  final String text;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return InkWell(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: isSelected ? Pallete.primary : Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Pallete.gray,
            fontSize: getFontSize(14),
            fontFamily:!isSelected ? 'Josefin Sans':null,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class ProfilContentItem extends StatelessWidget {
  const ProfilContentItem({Key? key, required this.title, required this.content}) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Pallete.gray,
            fontSize: getFontSize(18),
            fontFamily: 'Josefin Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(2),
        Text(
          content,
          style: TextStyle(
            color: Pallete.secondary,
            fontSize: getFontSize(20),
            fontFamily: 'Josefin Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
