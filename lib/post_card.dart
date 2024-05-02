import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCard();
}

class _PostCard extends State<PostCard> {
  var pressed = true;
  var likes = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/user_avatar.png'),
            ),
            title: const Text('Username'),
            subtitle: const Text('10 mins ago'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
          Image.asset('assets/post_image.png'),
          const ListTile(
            title: Text('Caption...'),
          ),
          ButtonBar(
            children: [
              IconButton(
                icon: pressed
                    ? const Icon(Icons.favorite)
                    : const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
