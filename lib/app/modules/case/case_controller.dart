import 'dart:convert';

import 'package:elis/app/modules/store/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'case_controller.g.dart';

class CaseController = _CaseControllerBase with _$CaseController;

abstract class _CaseControllerBase with Store {
  final UserStore store;
  _CaseControllerBase(this.store);
  @observable
  String title = '';

  @observable
  String description = '';

  @observable
  bool error = false;

  @action
  Future createCase() async {
    if (title == '' || description == '') {
      error = true;
      return;
    } else {
      var response = await http.post(
          'https://psicho-29d1e.firebaseio.com/${store.user.localId}/case.json',
          body: json.encode({
            "title": title,
            "author": store.user.email,
            "description": description,
            "atribute": false
          }));

      createPublicCase();
    }
  }

  @action
  Future createPublicCase() async {
    var response =
        await http.post('https://psicho-29d1e.firebaseio.com/cases/case.json',
            body: json.encode({
              "title": title,
              "author": store.user.email,
              "description": description,
              "atribute": false
            }));

    Modular.to.pushReplacementNamed('/home');
  }
}
