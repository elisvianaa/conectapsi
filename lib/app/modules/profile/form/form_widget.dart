import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final hint;
  final onChanged;
  final type;

  const FormWidget({
    @required this.hint,
    @required this.onChanged,
    @required this.type,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sw),
      ),
      padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
      width: sw * 0.9,
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: type,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    );
  }
}
