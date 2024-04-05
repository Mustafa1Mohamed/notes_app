import 'package:flutter/material.dart';
import 'package:notes_app/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxlines=1, this.onSaved, this.onChanged});
  final String hint;
  final int maxlines;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field is required';
        }
        else{
          return null;
        }
      },
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