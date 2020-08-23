import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final title;

  const AppBarWidget({
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      height: sh * 0.15,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(title),
        actions: [
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
    );
  }
}
