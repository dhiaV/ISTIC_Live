import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'post_card.dart';

import 'package:google_fonts/google_fonts.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _scrollController = ScrollController();
  double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feed',
          style: GoogleFonts.lobster().copyWith(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              Navigator.pushNamed(context, '/messages');
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {
            Navigator.pushNamed(context, '/classes');
          },
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const PostCard();
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              color: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.home,
                size: _iconSize,
              ),
              onPressed: () {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                );
              },
            ),
            const Spacer(),
            IconButton(
              color: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.search,
                size: _iconSize,
              ),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              color: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.add_box_rounded,
                size: _iconSize + 3,
              ),
              onPressed: () {Navigator.pushNamed(context, '/post');},
            ),
            const Spacer(),
            IconButton(
              color: Theme.of(context).colorScheme.primary,
              icon: Icon(
                Icons.account_circle,
                size: _iconSize,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.logout,
                size: _iconSize,
              ),
              color: Colors.red,
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
