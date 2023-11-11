import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxlines: 5,)
        ],
      ),
    );
  }
}