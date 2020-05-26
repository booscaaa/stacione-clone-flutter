import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'home.g.dart';

// This is the class used by rest of your codebase
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  ObservableList<HomeCard> pages = ObservableList.of([]);

  @observable
  User user = new User(nome: '');

  TabController tabController;

  @action
  init(homePageState) async {
    tabController = new TabController(length: 2, vsync: homePageState);
    user = await Handler().getUser();

    List<Map<String, dynamic>> config = [
      {
        'id': 1,
        'description':
            'Fique a vontade para ver e rever os chamados que você reportou e também para abrir novos quando necessário',
        'navigator': callRoute,
        'descriptionButton': 'Ver chamados'
      },
      {
        'id': 2,
        'description':
            'Veja todos os chamados que te encaminharam para atendimento e também os que você já atendeu',
        'navigator': userCallRoute,
        'descriptionButton': 'Ver atendimentos'
      }
    ];

    pages = ObservableList.of(config.map((home) {
      return HomeCard.fromJson(home);
    }).toList());
  }
}
