import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Post')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text('Go to SalePage'),
        ),
      ),
    );
  }
}
