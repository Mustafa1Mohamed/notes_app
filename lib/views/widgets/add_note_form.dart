
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 16,),
          CustomTextField(
            onSaved: (value){
              subtitle=value;
            },
            hint: 'Content',
            maxlines: 5,
            ),
          const SizedBox(height: 65,),
            Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomButton(
              onTap: () {
                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();
                  var noteModel=NoteModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                }else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {
                    
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
