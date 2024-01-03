import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);
  final data = const[];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(padding:
      EdgeInsets.symmetric(vertical: 8),
        child:const NoteItem() ,);

    });
  }
}
