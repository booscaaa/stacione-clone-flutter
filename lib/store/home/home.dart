
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.g.dart';

// This is the class used by rest of your codebase
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  TabController tabController;

  @action
  init(homePageState) async {
    tabController = new TabController(length: 2, vsync: homePageState);
  }
}
