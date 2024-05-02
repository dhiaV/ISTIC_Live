

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});
  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //const PostPage({super.key});

  // ignore: unused_field
  XFile? _image;

  Future _pickImageFromGallery() async {
    XFile? returnedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _image = returnedImage;
    });
  }

  Future _pickImageFromCamera() async {
    XFile? returnedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      _image = returnedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Caption',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
              maxLength: 150,
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              child: const Text('Upload Image'),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: _pickImageFromCamera,
              child: const Text('Upload from Camera'),
            ),
          ],
        ),
      ),
    );
  }
}
