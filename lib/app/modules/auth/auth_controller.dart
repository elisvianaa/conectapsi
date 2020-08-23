import 'dart:convert';

import 'package:elis/app/modules/model/user_model.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

const register_URL =
    'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD8YgMVxavDToMD4JXWhX2QQsgb5FQpTtc';
const auth_URL =
    'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD8YgMVxavDToMD4JXWhX2QQsgb5FQpTtc';

abstract class _AuthControllerBase with Store {
  final UserStore userStore;

  _AuthControllerBase(this.userStore);
  @observable
  String email = '';
  @observable
  String password = '';
  @observable
  bool error = false;
  @observable
  bool loading = false;



  Future signIn() async {
    loading = true;
    final response = await http.post(auth_URL,
        body: json.encode(
            {"email": email, "password": password, "returnSecureToken": true}));
    print(json.decode(response.body));
    if (response.statusCode != 200) {
      error = true;
      loading = false;
      return;
    } else {
      var data = json.decode(response.body);
      var user = UserModel.fromJson(data);
      userStore.setUser(user);
      Modular.to.pushReplacementNamed('/home');
      loading = false;
    }
  }
}
