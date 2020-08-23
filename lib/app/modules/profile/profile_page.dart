import 'package:elis/app/modules/colors.dart';
import 'package:elis/app/modules/profile/form/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Cadastro Psicólogo"})
      : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorA,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    FormWidget(
                      hint: 'Nome',
                      onChanged: (value) {
                        controller.name = value;
                      },
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: sh * 0.01),
                    FormWidget(
                      hint: 'E-mail',
                      onChanged: (value) {
                        controller.email = value;
                      },
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: sh * 0.01),
                    FormWidget(
                      hint: 'Senha',
                      onChanged: (value) {
                        controller.password = value;
                      },
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: sh * 0.01),
                    FormWidget(
                      hint: 'Confirmar senha',
                      onChanged: (value) {
                        controller.confirmPassword = value;
                      },
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: sh * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.signUp();
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: colorA,
        ),
      ),
    );
  }
}
