import 'dart:convert';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'curse_controller.g.dart';

class CurseController = _CurseControllerBase with _$CurseController;

abstract class _CurseControllerBase with Store {
  final UserStore store;

  _CurseControllerBase(this.store);

  @observable
  String title = '';

  @observable
  String description = '';

  @observable
  String local = '';

  // @observable
  // DateTime dtcourse;

  @action
  Future createCurse() async {
    var response = await http.post(
        'https://psicho-29d1e.firebaseio.com/${store.user.localId}/curse.json',
        body: json.encode({
          "title": title,
          "author": store.user.email,
          "description": description,
          "local": local,
          //"dtcourse": dtcourse,
          //"dtcourse": DateTime.now(),
          "dtcriation": DateTime.now(),
          "atribute": false
        }));
    createPublicCurse();
  }

  @action
  Future createPublicCurse() async {
    var response =
        await http.post('https://psicho-29d1e.firebaseio.com/curse/curse.json',
            body: json.encode({
              "title": title,
              "author": store.user.email,
              "description": description,
              "local": local,
              //"dtcourse": dtcourse,
              // "dtcourse": DateTime.now(),
              "dtcriation": DateTime.now(),
              "atribute": false
            }));
  }
}
