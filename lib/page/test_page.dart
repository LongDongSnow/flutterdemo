import 'package:flutter/material.dart';

import 'package:flutterdemo/common/utils/net.dart';
import 'package:flutterdemo/common/utils/io.dart';

class test_page extends StatefulWidget {
  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<test_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("test!!"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlineButton(
              child: Text("whiteFile"),
              onPressed: () async=> {print(await whiteFile("abc.txt","hello world"))},
            ),
            OutlineButton(
              child: Text("readFile"),
              onPressed: () async=> {print(await readFile("abc.txt"))},
            ),
            OutlineButton(
              child: Text("网络请求"),
              onPressed: () => {httpRequest("https://www.baidu.com")},
            ),
            
            OutlineButton(
              child: Text("aaaa"),
              onPressed: () => {
                
              },
            ),
            OutlineButton(
              child: Text("bbbb"),
              onPressed: () => {
              
              },
            ),
          ],
        ),
      ),
    );
  }
}
