import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';

class CardProfileWidget extends StatelessWidget {
  final text;
  final onPressed;
  const CardProfileWidget({
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sw * 0.04),
      child: Container(
        width: sw * 0.7,
        padding: EdgeInsets.symmetric(horizontal: sw * 0.02),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(sh * 0.02),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black54,
                offset: Offset(2, 2),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            FlatButton(
                child: Icon(
                  Icons.add,
                  color: colorA,
                ),
                onPressed: onPressed)
          ],
        ),
      ),
    );
  }
}
