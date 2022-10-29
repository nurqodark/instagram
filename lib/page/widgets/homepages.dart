import 'package:flutter/material.dart';
import 'package:insta/page/widgets/widget_add/story.dart';
import 'package:insta/page/widgets/widget_add/user_post.dart';

class HomePages extends StatelessWidget {
  HomePages({Key? key}) : super(key: key);

  final List user = [
    'Annisa',
    "Adnan",
    'Budi',
    "Hassan",
    "Devi",
    'Abdul',
    'Yeni',
    'Wahyu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Instagram',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.send_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return Story(
                    name: user[index],
                    isMe: index == 0 ? true : false,
                    isLive: index == 1 ? true : false,
                  );
                },
              ),
            ),
            Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return UserPost(name: user[index]);
                },
              ),
            )
          ],
        ));
  }
}
