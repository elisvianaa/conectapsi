import 'package:elis/app/modules/colors.dart';
import 'package:elis/app/modules/home/app_bar/app_bar_widget.dart';
import 'package:elis/app/modules/home/card_profile/card_profile_widget.dart';
import 'package:elis/app/modules/home/list_item/list_item_widget.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  UserStore user = Modular.get();

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: colorB,
          body: Observer(
            builder: (context) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBarWidget(
                          title: user.user.email,
                        ),
                        CardProfileWidget(
                          text: 'Novo Caso Clínico',
                          onPressed: () {
                            Modular.to.pushNamed('/case');
                          },
                        ),
                        SizedBox(
                          height: sh * 0.04,
                        ),
                        CardProfileWidget(
                          text: 'Novo Curso',
                          onPressed: () {
                            Modular.to.pushNamed('/curse');
                          },
                        ),
                        SizedBox(
                          height: sh * 0.03,
                        ),
                        CardProfileWidget(
                          text: 'Novo Psicólogo',
                          onPressed: () {
                            // Modular.to.pushReplacementNamed('/');
                          },
                        ),
                      ],
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    bottom: controller.openCard == true ? 0 : -sh * 0.8,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                      height: sh * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(sh * 0.03),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: sh * 0.05,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.video_library,
                                        color: colorC,
                                      ),
                                      onPressed: () {
                                        controller.setOpenCard();
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        Icons.menu,
                                        color: colorC,
                                      ),
                                      onPressed: () {
                                        controller.setOpenCard();
                                      }),
                                  IconButton(
                                      icon: Icon(
                                        Icons.message,
                                        color: colorC,
                                      ),
                                      onPressed: () {
                                        controller.setOpenCard();
                                      }),
                                ]),
                          ),
                          SizedBox(
                            height: sh * 0.01,
                          ),
                          Expanded(
                            child: Container(
                              child: ListView(
                                children: [
                                  ListItemWidget(
                                    color: colorA,
                                  ),
                                  SizedBox(
                                    height: sh * 0.01,
                                  ),
                                  ListItemWidget(
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    height: sh * 0.01,
                                  ),
                                  ListItemWidget(
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    height: sh * 0.01,
                                  ),
                                  ListItemWidget(
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    height: sh * 0.01,
                                  ),
                                  ListItemWidget(
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    height: sh * 0.01,
                                  ),
                                  ListItemWidget(
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
