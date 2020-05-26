import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:stacione/animation/login/login.dart';
import 'package:stacione/constants.dart';

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
        resizeToAvoidBottomInset: false,
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
                                  height: !loginAnimation.showForm
                                      ? 150
                                      : loginAnimation.carWith.value - 120,
                                  child: Image.asset('images/stacione.webp')))),
                      Positioned(
                          right: !loginAnimation.showForm ? -150 : -90,
                          bottom: 140 + loginAnimation.moveUp.value,
                          child: Container(
                              height: !loginAnimation.showForm
                                  ? 300
                                  : loginAnimation.buildHeigth.value,
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
                        right: -100,
                        bottom: loginAnimation.containerElevation +
                            loginAnimation.moveUp.value,
                        child: Transform.rotate(
                          angle: loginAnimation.containerAngle,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 50),
                              width: 2500,
                              height: MediaQuery.of(context).size.height,
                              color: !loginAnimation.showForm
                                  ? Theme.of(context).primaryColor
                                  : loginAnimation.containerColor.value,
                              child: loginAnimation.showForm
                                  ? SingleChildScrollView(
                                      child: Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: Column(children: <Widget>[
                                            new TextField(
                                              decoration: new InputDecoration(
                                                  border:
                                                      new OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      const Radius.circular(
                                                          10.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey[800]),
                                                  hintText: "CPF",
                                                  fillColor: Colors.white70),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                            ),
                                            new TextField(
                                              obscureText: true,
                                              decoration: new InputDecoration(
                                                  border:
                                                      new OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      const Radius.circular(
                                                          10.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey[800]),
                                                  hintText: "Senha",
                                                  fillColor: Colors.white70),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                            ),
                                            Container(
                                                height: 55,
                                                width: double.infinity,
                                                child: Opacity(
                                                    opacity: loginAnimation
                                                        .logo.value,
                                                    child: Hero(
                                                        tag: 'login',
                                                        child: new RaisedButton(
                                                            shape: new RoundedRectangleBorder(
                                                                borderRadius:
                                                                    new BorderRadius
                                                                            .circular(
                                                                        10.0)),
                                                            textColor:
                                                                Colors.white,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            child:
                                                                Text("Entrar"),
                                                            onPressed: () {
                                                              Navigator
                                                                  .pushNamedAndRemoveUntil(
                                                                      context,
                                                                      homeRoute,
                                                                      (route) =>
                                                                          false);
                                                              // Navigator.pushNamed(context);
                                                            }))))
                                          ])))
                                  : Container()),
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
                            width: !loginAnimation.showForm
                                ? 250
                                : loginAnimation.carWith.value,
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
