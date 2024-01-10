import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);
  final data = const[];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];

        return Padding(
          padding:  EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
              itemBuilder: (context,index){
            return Padding(padding:
            EdgeInsets.symmetric(vertical: 8),
              child: NoteItem(note: notes[index],) ,);


          }),
        );
      },

    );
  }
}
