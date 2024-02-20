import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kele_bernadin/App/app_config.dart';
import 'package:kele_bernadin/models/publication_model.dart';
import 'package:kele_bernadin/models/user_model.dart';
import 'package:kele_bernadin/screens/home_appbar.dart';
import 'package:kele_bernadin/screens/publication_tile.dart';
import 'package:kele_bernadin/screens/story_tile.dart';
import 'package:kele_bernadin/screens/story_tile_filled.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(0))
            .copyWith(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            const HomeAppBar(),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                IntrinsicHeight(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const StoryTile(),
                          Row(
                              children: users
                                  .asMap()
                                  .map((key, value) => MapEntry(
                                  key,
                                  StoryTileFilled(
                                    user: value,
                                  )))
                                  .values
                                  .toList()),
                        ],
                      )),
                ),
                const Gap(8),
                Column(
                  children: publications.map((e) => PublicationTile(publicationModel: e,)).toList()
                )
              ],
            ),
          ))
          ],
        ),
      ),
    );
  }
}
