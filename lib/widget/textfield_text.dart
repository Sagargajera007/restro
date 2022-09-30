import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restro/constants.dart';

class TextFieldText extends StatelessWidget {

  final TextEditingController controller;
  final String hinttext;
  final bool tohide;
  TextFieldText({Key? key,required this.controller,required this.hinttext,this.tohide = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      controller: controller,
      obscureText: tohide,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle:
        TextStyle(color: Color(0xff9CA3AF), fontSize: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: textFieldBorderColor),),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: textFieldBorderColor),
        ),
      ),
      style: TextStyle(
        fontSize: 14.0,
        color: Color(0xff374151),

      ),
    );
  }
}
