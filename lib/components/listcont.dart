import 'package:flutter/material.dart';
import 'package:servicesmob/global.dart' as g;

class ListContainer extends StatefulWidget {
  ListContainer(
      {Key key, this.width, this.height, this.text, this.font, this.head})
      : super(key: key);

  final width;
  final height;
  final text;
  final head;
  final double font;

  @override
  _ListContainerState createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: g.shadow.withOpacity(0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            widget.text == null ? '' : widget.text,
            style: TextStyle(
              fontFamily: 'Franklin Gothic',
              fontSize: widget.font,
              color: Colors.white,
              fontWeight:
                  widget.head != null ? FontWeight.w700 : FontWeight.w300,
            ),
            textAlign:
                widget.head == null ? TextAlign.justify : TextAlign.center,
          ),
        ),
      ),
    );
  }
}
