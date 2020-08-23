import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final hint;
  final onChanged;
  final obscure;
  final type;

  const FormWidget({
    @required this.hint,
    @required this.onChanged,
    @required this.obscure,
    @required this.type,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sh * 0.1),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black12,
            offset: Offset(1, 2),
            spreadRadius: 2,
          )
        ],
      ),
      width: sw * 0.8,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscure,
        keyboardType: type,
        decoration: InputDecoration(border: InputBorder.none, hintText: hint),
      ),
    );
  }
}
