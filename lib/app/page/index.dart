import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with TickerProviderStateMixin {
  AnimationController _controller;

  bool showBuild = false;
  // bool finalAnim = false;

  AnimationController _build;

  AnimationController carroController;
  Animation<double> carro;
  Animation<double> container;

  Animation<double> fanim;
  Animation<double> logo;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);

    _build = AnimationController(vsync: this);

    carroController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    container = Tween<double>(begin: -1000, end: -250).animate(
      new CurvedAnimation(
        parent: carroController,
        curve: new Interval(
          0.0,
          0.6,
        ),
      ),
    );

    carro = Tween<double>(begin: -400, end: 0).animate(
      new CurvedAnimation(
        parent: carroController,
        curve: new Interval(
          0.6,
          0.8,
        ),
      ),
    );

    fanim = Tween<double>(begin: 0, end: 150).animate(
      new CurvedAnimation(
        parent: carroController,
        curve: new Interval(
          0.9,
          1.0,
        ),
      ),
    );

    logo = Tween<double>(begin: 0, end: 1).animate(
      new CurvedAnimation(
        parent: carroController,
        curve: new Interval(
          0.9,
          1.0,
        ),
      ),
    );

    carroController
      ..addListener(() {
        setState(() {});
      });

    carroController.forward();
    b();
    c();
  }

  Future b() async {
    await Future.delayed(const Duration(milliseconds: 1600));
    showBuild = true;
  }

  Future c() async {
    await Future.delayed(const Duration(milliseconds: 2600));
    _controller.stop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              child: Expanded(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 60,
                        left: 20,
                        child: Opacity(
                            opacity: logo.value,
                            child: Container(
                                height: 150,
                                child: Image.asset('images/stacione.webp')))),
                    Positioned(
                        right: -150,
                        bottom: 140 + fanim.value,
                        child: Container(
                            height: 300,
                            child: showBuild
                                ? Lottie.asset(
                                    'images/build.json',
                                    controller: _build,
                                    onLoaded: (composition) {
                                      // Configure the AnimationController with the duration of the
                                      // Lottie file and start the animation.
                                      _build
                                        ..duration = composition.duration
                                        ..forward();
                                    },
                                  )
                                : Container())),
                    Positioned(
                      left: -100,
                      right: -50,
                      bottom: container.value + fanim.value,
                      child: Transform.rotate(
                        angle: -0.12,
                        child: Container(
                          width: 2500,
                          height: 400,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 30,
                        right: 30,
                        bottom: container.value + fanim.value + 200,
                        child: Container(
                            height: 50,
                            child: Opacity(
                            opacity: logo.value,
                            child: new OutlineButton(
                                highlightedBorderColor: Colors.white,
                                textColor: Colors.white,
                                child: Text("Login"),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 1),
                                onPressed: () {
                                  // Navigator.pushNamed(context);
                                })))),
                    Positioned(
                      left: carro.value,
                      bottom: 70 + fanim.value,
                      child: Container(
                          height: 150,
                          child: Lottie.asset(
                            'images/car.json',
                            controller: _controller,
                            onLoaded: (composition) {
                              // Configure the AnimationController with the duration of the
                              // Lottie file and start the animation.
                              _controller
                                ..duration = composition.duration
                                ..repeat();
                            },
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
