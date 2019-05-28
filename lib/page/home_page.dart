import 'package:flutter/material.dart';
class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Go back!'),
          onPressed: () => {
            Navigator.pop(context)
          },
        ),
      ),
    );
  }
}