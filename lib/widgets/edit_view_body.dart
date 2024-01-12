import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/color_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list.dart';

import '../cubits/add_note_cubit/add_note_cubit.dart';
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
 final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            onPressed:(){
             widget.note.title = title ?? widget.note.title;
             widget.note.subTitle = content ?? widget.note.subTitle;
             widget.note.save();
             BlocProvider.of<NotesCubit>(context).fetchAllNotes();
             Navigator.pop(context);

            } ,
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50,),

          CustomTextField(
            onChanged: (value){ title=value;},
              hint: widget.note.title,),
          SizedBox(height: 16,),

          CustomTextField(
            onChanged: (value){ content=value;},

            hint: widget.note.subTitle,maxLines: 5,),
          EditNoteColorsList(note:widget.note),

        ],
      ),
    );
  }
}
