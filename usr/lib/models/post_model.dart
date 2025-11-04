import 'package:couldai_user_app/models/user_model.dart';

class Post {
  final User user;
  final String imageUrl;
  final int likes;
  final int comments;
  final String caption;

  Post({
    required this.user,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.caption,
  });
}
