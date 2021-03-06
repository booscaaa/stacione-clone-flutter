import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacione/app/page/home.dart';
import 'package:stacione/app/page/index.dart';
import 'package:stacione/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return SlideRightRoute(widget: HomePage());
      default:
        return SlideRightRoute(widget: IndexPage());
    }
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                FadeTransition(opacity: animation, child: child),
            transitionDuration: Duration(milliseconds: 500));
}
