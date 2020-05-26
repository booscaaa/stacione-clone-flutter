import 'package:flutter/material.dart';
import 'package:stacione/router.dart';

var defaultPage;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stacione',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xff0071AC),
          backgroundColor: Color(0xff0071AC),
          fontFamily: 'AmpleSoft',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: defaultPage,
        onGenerateRoute: Router.generateRoute);
  }
}
