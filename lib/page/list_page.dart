import 'package:flutter/material.dart';

class list_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Long List';
    List<String> items = new List<String>.generate(10000, (i) => "Item $i");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
