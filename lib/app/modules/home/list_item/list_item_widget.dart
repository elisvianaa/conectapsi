import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final color;

  const ListItemWidget({this.color});
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sw * 0.02, vertical: sh * 0.02),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black12,
          offset: Offset(2, 2),
          spreadRadius: 2,
        )
      ]),
      height: sh * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Caso Clínico',
                      style: TextStyle(color: colorC, fontSize: sh * 0.02),
                    ),
                    Text(
                      'Mariana Ferraz',
                      style: TextStyle(color: colorA),
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_comment,
                    color: color,
                  ),
                  onPressed: () {
                    print('ok');
                  })
            ],
          ),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in dui aliquet, semper tellus porttitor, egestas dui. Suspendisse potenti. Praesent mollis dapibus vehicula. Praesent quis dignissim justo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in dui aliquet, semper tellus porttitor, egestas dui. Suspendisse potenti. Praesent mollis dapibus vehicula. Praesent quis dignissim justo.')
        ],
      ),
    );
  }
}
