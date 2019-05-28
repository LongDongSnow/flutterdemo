import 'package:flutter/material.dart';
import 'package:flutterdemo/widget/CheckBoxWidget.dart';
import 'package:flutterdemo/widget/SwitchWidget.dart';
import 'package:flutterdemo/widget/InputWidget.dart';
class form_page extends StatefulWidget {
  form_page({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<form_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:Container(
              color: Colors.cyanAccent,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CheckBoxWidget(),
                    SwitchWidget(),
                    InputWidget(),
                    // Image(
                    //   image: AssetImage("static/images/a.jpg"),
                    //   width: 200.0,
                    // ),
                    
                  ],
                ),
              ),
        )
      ),
      
    );
  }
 
}
