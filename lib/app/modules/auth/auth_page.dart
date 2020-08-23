import 'package:elis/app/modules/auth/form/form_widget.dart';
import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'auth_controller.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key key, this.title = "ConectaPsi"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(body: Observer(
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  height: sh,
                  width: sw,
                  decoration: BoxDecoration(
                    color: colorA,
                  ),
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: controller.loading == false
                    ? Container(
                        height: sh * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: sw,
                            ),
                            FormWidget(
                              hint: 'E-mail',
                              obscure: false,
                              onChanged: (value) {
                                controller.email = value;
                              },
                              type: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: sh * 0.03,
                            ),
                            FormWidget(
                              hint: 'Senha',
                              obscure: true,
                              onChanged: (value) {
                                controller.password = value;
                              },
                              type: TextInputType.text,
                            ),
                            controller.error == false
                                ? SizedBox()
                                : Text(
                                    'Usuário ou senha inválidos',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                            SizedBox(
                              height: sh * 0.03,
                            ),
                            Container(
                              height: sh * 0.04,
                              width: sw * 0.6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(sw)),
                              child: FlatButton(
                                onPressed: () {
                                  controller.signIn();
                                },
                                child: Text('LOGIN'),
                              ),
                            ),
                            SizedBox(
                              height: sh * 0.03,
                            ),
                            FlatButton(
                              onPressed: () {
                                Modular.to.pushReplacementNamed('/profile');
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    : CircularProgressIndicator(),
              ),
            ),
          ],
        );
      },
    ));
  }
}
