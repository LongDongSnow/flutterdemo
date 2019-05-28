import 'package:flutter/material.dart';
class SwitchWidget extends StatefulWidget {
  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<SwitchWidget> {
  bool _switchSelected=false; //维护单选开关状态
  void changeValue(v){
       print("SwitchOnChange: $v");
      setState(() {
          _switchSelected=v;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: _switchSelected,//当前状态
        onChanged:changeValue
     );
  }
}