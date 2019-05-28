import 'package:flutter/material.dart';
class InputWidget extends StatefulWidget {
  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<InputWidget> {
  
  void changeValue(v){
       print("inputOnChange: $v");
  }
  @override
  Widget build(BuildContext context) {
    return  TextField(
     decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
            onChanged: changeValue
      );
  }
}