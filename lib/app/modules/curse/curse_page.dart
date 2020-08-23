import 'package:elis/app/modules/colors.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'curse_controller.dart';

class CursePage extends StatefulWidget {
  final String title;
  const CursePage({Key key, this.title = "Curso"}) : super(key: key);

  @override
  _CursePageState createState() => _CursePageState();
}

class _CursePageState extends ModularState<CursePage, CurseController> {
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
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: sh * 0.06,
                ),
                SizedBox(width: sw),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                  width: sw * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(sh * 0.02)),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.title = value;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Título',
                    ),
                  ),
                ),
                SizedBox(
                  height: sh * 0.06,
                ),
                SizedBox(width: sw),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                  width: sw * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(sh * 0.02)),
                  child: TextFormField(
                    onChanged: (value) {
                      controller.local = value;
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Local',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () {},
                        )),
                  ),
                ),
                SizedBox(
                  height: sh * 0.03,
                ),
                Container(
                  width: sw * 0.8,
                  height: sh * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(sh * 0.02)),
                  padding: EdgeInsets.symmetric(
                      horizontal: sw * 0.03, vertical: sh * 0.01),
                  child: TextFormField(
                    minLines: null,
                    maxLines: null,
                    maxLength: 250,
                    expands: true,
                    onChanged: (value) {
                      controller.description = value;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Descrição',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Comente
          // controller.createCurse();
          Modular.to.pushNamed('/home');
        },
        child: Icon(
          Icons.add,
          color: colorC,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
