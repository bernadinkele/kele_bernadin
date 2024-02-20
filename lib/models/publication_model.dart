import 'package:kele_bernadin/models/user_model.dart';

class PublicationModel{
  final UserModel user;
  final String imagePath;
  final String comment;

  PublicationModel({
    required this.user,
    required this.comment,
    required this.imagePath
});
}

final publications = [
  PublicationModel(
      user: users[1],
      comment: "",
      imagePath: "assets/icons/1270214-route-dans-une-foret-sombre-gratuit-photo.jpg"
  ),
  PublicationModel(
      user: users[2],
      comment: "",
      imagePath: "assets/icons/arena_stage_interior-02.jpg"
  )
];