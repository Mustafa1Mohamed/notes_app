import 'package:flutter/material.dart';
import 'package:notes_app/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxlines=1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kprimarycolor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimarycolor),
      ),
      cursorColor: kprimarycolor,
    );
  }

  OutlineInputBorder buildBorder([value]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(color:value ?? Colors.white)
      );
  }
}