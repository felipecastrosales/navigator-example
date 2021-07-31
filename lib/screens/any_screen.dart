import 'package:flutter/material.dart';

class AnyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Any Screen'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Any Screen'),
          onPressed: () {
            
          },
        ),
      ),
    );
  }
}