import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';

class CurseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.height;
    return Container(
      height: sh * 0.79,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: sh * 0.02),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(sh * 0.02),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black12,
                    offset: Offset(2, 2),
                  ),
                ]),
            height: sh * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Titulo do curso',
                      style: TextStyle(color: colorB, fontSize: sh * 0.02),
                    ),
                    Text('22/09')
                  ],
                ),
                SizedBox(
                  height: sh * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Rua 1 - Guarujá'), Text('Elis')],
                ),
                SizedBox(
                  height: sh * 0.02,
                ),
                Text('Uma descrição qualquer sobre o curso'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
