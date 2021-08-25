import 'package:flutter/material.dart';
import 'package:servicesmob/global.dart' as g;

class BGreglog extends StatefulWidget {
  const BGreglog({Key key}) : super(key: key);

  @override
  _BGreglogState createState() => _BGreglogState();
}

class _BGreglogState extends State<BGreglog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: g.width * 2,
      width: g.width,
      decoration: BoxDecoration(
        color: g.primary,
        borderRadius: BorderRadius.circular(g.width),
        boxShadow: [
          BoxShadow(
              color: g.shadow,
              blurRadius: 10.0,
              spreadRadius: 3.0,
              offset: Offset(0, 3)),
        ],
      ),
    );
  }
}
