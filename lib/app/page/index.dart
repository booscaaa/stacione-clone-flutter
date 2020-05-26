import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:stacione/animation/login/login.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin {
  final loginAnimation = LoginAnimation();

  @override
  void initState() {
    super.initState();
    loginAnimation.init(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              child: Expanded(
                child: Observer(builder: (_) {
                  return Stack(
                    children: <Widget>[
                      Positioned(
                          top: 60,
                          left: 20,
                          child: Opacity(
                              opacity: loginAnimation.logo.value,
                              child: Container(
                                  height: 150,
                                  child: Image.asset('images/stacione.webp')))),
                      Positioned(
                          right: !loginAnimation.showForm ? -150 : -90,
                          bottom: 140 + loginAnimation.moveUp.value,
                          child: Container(
                              height: !loginAnimation.showForm ? 300 : loginAnimation.buildHeigth.value,
                              child: loginAnimation.showBuild
                                  ? Lottie.asset(
                                      'images/build.json',
                                      controller:
                                          loginAnimation.buildController,
                                      onLoaded: (composition) {
                                        loginAnimation.buildController
                                          ..duration = composition.duration
                                          ..forward();
                                      },
                                    )
                                  : Container())),
                      Positioned(
                        left: -100,
                        right: -50,
                        bottom: loginAnimation.containerElevation +
                            loginAnimation.moveUp.value,
                        child: Transform.rotate(
                          angle: loginAnimation.containerAngle,
                          child: Container(
                            width: 2500,
                            height: MediaQuery.of(context).size.height,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 30,
                          right: 30,
                          bottom: loginAnimation.containerElevation +
                              (loginAnimation.moveUp.value * 4.3),
                          child: !loginAnimation.showForm
                              ? Container(
                                  height: 50,
                                  child: Opacity(
                                      opacity: loginAnimation.logo.value,
                                      child: new OutlineButton(
                                          highlightedBorderColor: Colors.white,
                                          textColor: Colors.white,
                                          child: Text("Login"),
                                          borderSide: BorderSide(
                                              color: Colors.white,
                                              style: BorderStyle.solid,
                                              width: 1),
                                          onPressed: () {
                                            this.loginAnimation.login();
                                            // Navigator.pushNamed(context);
                                          })))
                              : Container()),
                      Positioned(
                        left: loginAnimation.car.value,
                        bottom: 90 + loginAnimation.moveUp.value,
                        child: Container(
                            height: 150,
                            child: Lottie.asset(
                              'images/car.json',
                              controller: loginAnimation.carController,
                              onLoaded: (composition) {
                                loginAnimation.carController
                                  ..duration = composition.duration
                                  ..repeat();
                              },
                            )),
                      )
                    ],
                  );
                }),
              ),
            )
          ],
        ));
  }
}
