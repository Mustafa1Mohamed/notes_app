import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async
  {
    emit(NotesLoading());
    try {
  var notesBox= Hive.box<NoteModel>(kNotes);
  List<NoteModel>notes= notesBox.values.toList();
  emit(NotesSuccess(notes));
}catch (e) {
  emit(NotesFailure(e.toString()));
}
  }
}
