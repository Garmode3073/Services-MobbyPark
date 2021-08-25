import 'package:flutter/material.dart';
import 'package:servicesmob/global.dart' as g;

class TextFld extends StatefulWidget {
  final String hint;
  final Function validity;
  final TextEditingController ctrler;

  const TextFld({Key key, this.hint, this.validity, this.ctrler})
      : super(key: key);
  @override
  _TextFldState createState() => _TextFldState();
}

class _TextFldState extends State<TextFld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: g.primary, fontSize: 20, fontFamily: 'Poppins'),
      cursorColor: g.primary,
      validator: widget.validity,
      controller: widget.ctrler,
      keyboardType: widget.hint == 'Email'
          ? TextInputType.emailAddress
          : TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        hintText: widget.hint,
        hintStyle: TextStyle(color: g.shadow, fontFamily: 'Poppins'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29),
          borderSide: BorderSide.none,
        ),
        enabled: true,
      ),
    );
  }
}

class PassFld extends StatefulWidget {
  final String hint;
  final Function validity;
  final TextEditingController ctrler;

  const PassFld({Key key, this.hint, this.validity, this.ctrler})
      : super(key: key);
  @override
  _PassFldState createState() => _PassFldState();
}

class _PassFldState extends State<PassFld> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !visible,
      validator: widget.validity,
      style: TextStyle(color: g.primary, fontSize: 20, fontFamily: 'Poppins'),
      cursorColor: g.primary,
      controller: widget.ctrler,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        fillColor: Colors.white,
        filled: true,
        hintText: widget.hint,
        hintStyle: TextStyle(color: g.shadow, fontFamily: 'Poppins'),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(29),
        ),
        enabled: true,
        suffixIcon: IconButton(
          icon: Icon(
            visible ? Icons.visibility : Icons.visibility_off,
            color: g.primary,
          ),
          onPressed: () {
            setState(() {
              visible = !visible;
            });
          },
        ),
      ),
    );
  }
}
