import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: <Widget>[
            Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration:
                            InputDecoration(filled: true, labelText: 'esres'),
                      ),
                      Padding(padding: EdgeInsets.all(2),),
                      TextField(
                        decoration:
                            InputDecoration(filled: true, labelText: 'esres'),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
