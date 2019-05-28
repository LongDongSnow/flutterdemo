import 'package:flutter/material.dart';
class CheckBoxWidget extends StatefulWidget {
  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<CheckBoxWidget> {
  bool _checkboxSelected = false;//维护复选框状态
  void changeValue(v) {
      print("checkBoxOnChange: $v");
      setState(() {
        _checkboxSelected=v;
      });  
  }
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _checkboxSelected,
        activeColor: Colors.red, //选中时的颜色
        onChanged: changeValue
    );
  }
}
