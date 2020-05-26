// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$pagesAtom = Atom(name: '_HomeController.pages');

  @override
  ObservableList<dynamic> get pages {
    _$pagesAtom.reportRead();
    return super.pages;
  }

  @override
  set pages(ObservableList<dynamic> value) {
    _$pagesAtom.reportWrite(value, super.pages, () {
      super.pages = value;
    });
  }

  final _$userAtom = Atom(name: '_HomeController.user');

  @override
  dynamic get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(dynamic value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_HomeController.init');

  @override
  Future init(dynamic homePageState) {
    return _$initAsyncAction.run(() => super.init(homePageState));
  }

  @override
  String toString() {
    return '''
pages: ${pages},
user: ${user}
    ''';
  }
}
