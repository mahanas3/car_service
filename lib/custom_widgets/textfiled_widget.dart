import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget({
    super.key,
    required this.controller,
    required this.icon,
    required this.text2,
    required this.text1,
  });

  String text1;
  String text2;
  Widget? icon;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xff67686D),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: text1,
        labelText: text2,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          //fontFamily: 'popins2',
        ),
        prefixIcon: icon,
        prefixIconColor: Colors.white,

        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
    );
  }
}
