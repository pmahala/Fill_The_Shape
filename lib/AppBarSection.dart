import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  final Widget appBarSecChild;
  final Color color;

  AppBarSection({this.appBarSecChild, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: appBarSecChild,
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
