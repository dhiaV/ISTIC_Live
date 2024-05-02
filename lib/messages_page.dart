import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:istic/conversation_page.dart';


class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: GoogleFonts.lobster(),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/user_avatar.png'),
              ),
              title: Text(
                'Sender Name ${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Message content here'),
                  SizedBox(height: 4.0),
                  Text(
                    '10:00 AM',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConversationPage()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
