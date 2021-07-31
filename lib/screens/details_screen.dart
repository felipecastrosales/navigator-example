import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop!'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Pop! | $id'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}