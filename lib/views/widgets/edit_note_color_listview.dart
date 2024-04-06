import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constants.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currIndex;
  @override
  void initState() {
    currIndex = KColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 38,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: KColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currIndex = index;
                  widget.note.color = KColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: KColors[index],
                  isActive: currIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
