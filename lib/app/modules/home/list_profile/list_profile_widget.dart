import 'package:flutter/material.dart';

class ListProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Name"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "email"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "CRP"),
          ),
          SizedBox(
            height: sh * 0.02,
          ),
          Container(
            height: sh * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: sw,
                ),
                Text('Formação'),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Instituiçao'),
                ),
                TextFormField(
                    decoration: InputDecoration(
                  hintText: "Titulo",
                )),
                Row(
                  children: [
                    Text('Concluido: '),
                    Checkbox(
                      onChanged: (value) {},
                      value: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: sh * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {}, child: Text('Salvar Formação')),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
