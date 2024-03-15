import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
