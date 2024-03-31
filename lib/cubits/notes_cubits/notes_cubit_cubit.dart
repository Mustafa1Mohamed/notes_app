import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>?notes;
  fetchAllNotes() async
  {
  var notesBox= Hive.box<NoteModel>(kNotes);
  notes= notesBox.values.toList();
  }
}
