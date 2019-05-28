
import 'package:flutter/material.dart';
// ParentWidget 为 TapboxB 管理状态.
//------------------------ ParentWidget --------------------------------

// 父widget管理widget的state
class parent_control_state_example extends StatefulWidget {
  @override
  _ParentWidgetState createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<parent_control_state_example> {
  bool _active = false;
  
  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
        myTest: (a,b)=>{print("hello myGet$a$b")},
      ),
    );
  }
}

//------------------------- TapboxB ----------------------------------

class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged,this.myTest})
      : super(key: key){
          // print('构造函数');
      }

  final bool active;
  final ValueChanged<bool> onChanged;
  final myTest;

  void _handleTap() {
    myTest("this is tap box","2222222");
    onChanged(!active);
  }

  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
  
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 100.0,
        decoration: new BoxDecoration(
          color: active ? Colors.cyan : Colors.blueAccent,
        ),
      ),
    );
  }
}