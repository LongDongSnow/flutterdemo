import 'package:flutter/material.dart';
import 'package:flutterdemo/page/sample_page.dart';
import 'package:flutterdemo/page/test_page.dart';
import 'package:flutterdemo/page/show_page.dart';
import 'package:flutterdemo/page/login_page.dart';
import 'package:flutterdemo/page/form_page.dart';
import 'package:flutterdemo/page/list_page.dart';
import 'package:flutterdemo/page/signature_page.dart';
MaterialApp initRouter() {
  return MaterialApp(
    // title: 'Flutter!!!',
    // MaterialApp contains our top-level Navigator
    // initialRoute: '/',
    // home: sample_page(title: 'Flutter Demo'), // becomes the route named '/'
    // home:show_page(),
    home:login_page(),
    theme: new ThemeData(
      // primarySwatch: Colors.green,
      // accentColor: Colors.lightGreenAccent,
      // // Set background color
      // backgroundColor: Colors.black12,
    ),
    routes: {
      '/a': (BuildContext context) => page_a(),
      '/b': (BuildContext context) => page_b(),
      '/form':(BuildContext context) => page_b(),
      '/test': (BuildContext context) => test_page(),
      '/show': (BuildContext context) => show_page(),
      '/sample':(BuildContext context) => sample_page(title: 'Flutter Demo'),
      '/form':(BuildContext context) => form_page(),
      '/list':(BuildContext context) => list_page(),
      '/signature':(BuildContext context) => signature_page(),
      
    },
  );
}

class page_a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('page a'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             OutlineButton(
              child: Text('Go page_b!'),
              onPressed: () => {
               Navigator.pushNamed(context, '/b')
              }),
               OutlineButton(
                child: Text('Go test!'),
                onPressed: () => {
                Navigator.pushNamed(context, '/test')
              }),
              OutlineButton(
              child: Text('111111!'),
              onPressed: () => {
                // Navigator.of(context).pop()
              })
        ])
 
          
      
        
      )
      );
   
  }
}

class page_b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.display1,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: Text('page b'),
        ),
      ),
    );
  }
}
