import 'package:flutter/material.dart';
import 'package:flutterdemo/page/home_page.dart';
import 'package:flutterdemo/example/parent_control_state_example.dart';
class sample_page extends StatefulWidget {
  sample_page({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _SelfState createState() => new _SelfState();
}

class _SelfState extends State<sample_page> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello,World',
              style: TextStyle(
              color: Colors.blue,
              fontSize: 36.0,
              // height: 1.2,  
              fontFamily: "Courier",
              background: new Paint()..color = Colors.white,
              // decoration:TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.dashed
            ),
            ),
            OutlineButton(
              child: Text("跳转通过 push"),
              onPressed: () => {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new home_page()),
                )
              },
            ),
            OutlineButton(
              child: Text("跳转通过 pushNamed"),
              onPressed: () => {
                Navigator.pushNamed(context, '/a')
              },
            ),
            OutlineButton(
              child: Text("to show"),
              onPressed: () => {
                Navigator.pushNamed(context, '/show')
              },
            ),
            OutlineButton(
              child: Text("to form"),
              onPressed: () => {
                Navigator.pushNamed(context, '/form')
              },
            ),
            OutlineButton(
              child: Text("to Test"),
              onPressed: () => {
                Navigator.pushNamed(context, '/test')
              },
            ),
            OutlineButton(
              child: Text("to List"),
              onPressed: () => {
                Navigator.pushNamed(context, '/list')
              },
            ),    
             OutlineButton(
              child: Text("to Signature"),
              onPressed: () => {
                Navigator.pushNamed(context, '/signature')
              },
            ),    
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
             parent_control_state_example(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
