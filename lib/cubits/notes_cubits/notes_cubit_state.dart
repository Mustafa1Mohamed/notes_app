part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}
final class NotesLoading extends NotesCubitState {}
final class NotesSuccess extends NotesCubitState 
{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
final class NotesFailure extends NotesCubitState 
{
  final String errMessage;

  NotesFailure(this.errMessage);
}
