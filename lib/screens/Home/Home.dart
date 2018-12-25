import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        brightness: Brightness.dark,
      ),
      body: Center(
        child: (new SingleChildScrollView(
          child: new Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Colors.green[100],
                  Colors.green[300],
                ],
                begin: new FractionalOffset(0.0, 0.0),
                end: new FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
              ),
            ),
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 75),
                  child: new Image(
                    width: 250,
                    height: 190,
                    image: new AssetImage('assets/images/login_logo.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: new TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email address',
                      icon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: new TextField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      icon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
