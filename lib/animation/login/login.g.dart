// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginAnimation on _LoginAnimation, Store {
  final _$showBuildAtom = Atom(name: '_LoginAnimation.showBuild');

  @override
  bool get showBuild {
    _$showBuildAtom.reportRead();
    return super.showBuild;
  }

  @override
  set showBuild(bool value) {
    _$showBuildAtom.reportWrite(value, super.showBuild, () {
      super.showBuild = value;
    });
  }

  final _$showFormAtom = Atom(name: '_LoginAnimation.showForm');

  @override
  bool get showForm {
    _$showFormAtom.reportRead();
    return super.showForm;
  }

  @override
  set showForm(bool value) {
    _$showFormAtom.reportWrite(value, super.showForm, () {
      super.showForm = value;
    });
  }

  final _$containerElevationAtom =
      Atom(name: '_LoginAnimation.containerElevation');

  @override
  double get containerElevation {
    _$containerElevationAtom.reportRead();
    return super.containerElevation;
  }

  @override
  set containerElevation(double value) {
    _$containerElevationAtom.reportWrite(value, super.containerElevation, () {
      super.containerElevation = value;
    });
  }

  final _$containerAngleAtom = Atom(name: '_LoginAnimation.containerAngle');

  @override
  double get containerAngle {
    _$containerAngleAtom.reportRead();
    return super.containerAngle;
  }

  @override
  set containerAngle(double value) {
    _$containerAngleAtom.reportWrite(value, super.containerAngle, () {
      super.containerAngle = value;
    });
  }

  final _$_LoginAnimationActionController =
      ActionController(name: '_LoginAnimation');

  @override
  dynamic init(dynamic state, BuildContext context) {
    final _$actionInfo = _$_LoginAnimationActionController.startAction(
        name: '_LoginAnimation.init');
    try {
      return super.init(state, context);
    } finally {
      _$_LoginAnimationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic login(BuildContext context) {
    final _$actionInfo = _$_LoginAnimationActionController.startAction(
        name: '_LoginAnimation.login');
    try {
      return super.login(context);
    } finally {
      _$_LoginAnimationActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showBuild: ${showBuild},
showForm: ${showForm},
containerElevation: ${containerElevation},
containerAngle: ${containerAngle}
    ''';
  }
}
