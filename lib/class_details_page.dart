import 'package:flutter/material.dart';

class ClassDetailsPage extends StatelessWidget {
  const ClassDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Details'),
      ),
      body: const Center(
        child: Text('Class Documents, News, etc...'),
      ),
    );
  }
}
