import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 16,),
            CustomTextField(hint: 'Content',maxlines: 5,),
            SizedBox(height: 65,),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: CustomButton(),
            ),
          ],
        ),
      ),
    );
  }
}
