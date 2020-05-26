import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'login.g.dart';

// This is the class used by rest of your codebase
class LoginAnimation = _LoginAnimation with _$LoginAnimation;

abstract class _LoginAnimation with Store {
  @observable
  bool showBuild = false;

  @observable
  bool showForm = false;

  @observable
  double containerElevation = -1000;

  @observable
  double containerAngle = -0.12;

  AnimationController buildController;
  AnimationController carController;
  AnimationController controller;
  AnimationController formController;

  Animation<double> container;
  Animation<double> moveUp;
  Animation<double> car;
  Animation<double> logo;

  Animation<double> angle;
  Animation<double> carWith;
  Animation<double> buildHeigth;
  Animation<Color> containerColor;

  @action
  init(state) {
    carController = AnimationController(vsync: state);

    buildController = AnimationController(vsync: state);

    controller =
        AnimationController(vsync: state, duration: Duration(seconds: 3));

    formController = AnimationController(
        vsync: state, duration: Duration(milliseconds: 300));

    _initController();
  }

  @action
  login() {
    _formController();
  }

  _formController() {
    this.showForm = true;
    angle = Tween<double>(begin: -0.12, end: 0).animate(
      new CurvedAnimation(
        parent: formController,
        curve: new Interval(
          0.0,
          1.0,
        ),
      ),
    );

    moveUp = Tween<double>(begin: moveUp.value, end: 300).animate(
      new CurvedAnimation(
        parent: formController,
        curve: new Interval(
          0.0,
          1.0,
        ),
      ),
    );

    buildHeigth = Tween<double>(begin: 300, end: 200).animate(
      new CurvedAnimation(
        parent: formController,
        curve: new Interval(
          0.0,
          1.0,
        ),
      ),
    );

    carWith = Tween<double>(begin: 250, end: 200).animate(
      new CurvedAnimation(
        parent: formController,
        curve: new Interval(
          0.0,
          1.0,
        ),
      ),
    );

     containerColor = ColorTween(begin: Color(0xff0071AC), end: Colors.grey.withOpacity(.2)).animate(
      new CurvedAnimation(
        parent: formController,
        curve: new Interval(
          0.0,
          1.0,
        ),
      ),
    );

    angle
      ..addListener(() {
        this.containerAngle = angle.value;
      });

    formController.forward();
  }

  _initController() {
    container = Tween<double>(begin: -3000, end: -520).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.0,
          0.3,
        ),
      ),
    );

    car = Tween<double>(begin: -400, end: 0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.6,
          0.8,
        ),
      ),
    );

    moveUp = Tween<double>(begin: 0, end: 150).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.9,
          1.0,
        ),
      ),
    );

    logo = Tween<double>(begin: 0, end: 1).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.9,
          1.0,
        ),
      ),
    );

    controller
      ..addListener(() {
        this.containerElevation = container.value;
      });

    controller.forward();
    _b();
    _c();
  }

  Future _b() async {
    await Future.delayed(const Duration(milliseconds: 1300));
    showBuild = true;
  }

  Future _c() async {
    await Future.delayed(const Duration(milliseconds: 2600));
    // carController.stop();
  }
}
