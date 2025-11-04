import 'package:couldai_user_app/models/post_model.dart';
import 'package:couldai_user_app/models/user_model.dart';
import 'package:couldai_user_app/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Post> posts = [
    Post(
      user: User(
          username: 'johndoe',
          profileImageUrl: 'https://randomuser.me/api/portraits/men/32.jpg'),
      imageUrl: 'https://picsum.photos/seed/picsum/400/300',
      likes: 123,
      comments: 12,
      caption: 'Beautiful day out here! #nature #photography',
    ),
    Post(
      user: User(
          username: 'janedoe',
          profileImageUrl: 'https://randomuser.me/api/portraits/women/44.jpg'),
      imageUrl: 'https://picsum.photos/seed/picsum2/400/300',
      likes: 456,
      comments: 45,
      caption: 'Loving the new camera!',
    ),
    Post(
      user: User(
          username: 'coolguy',
          profileImageUrl: 'https://randomuser.me/api/portraits/men/54.jpg'),
      imageUrl: 'https://picsum.photos/seed/picsum3/400/300',
      likes: 789,
      comments: 82,
      caption: 'Just another day at the office. #worklife',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SocialApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostWidget(post: posts[index]);
        },
      ),
    );
  }
}
