import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey <FormState> formKey= GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title =value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'Content',
            onSaved: (value){
              subTitle =value;
            },
            maxLines: 5,),
          SizedBox(height: 40,),
          BlocBuilder<AddNoteCubit,AddNoteState>(

            builder: (BuildContext context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    var noteModel=NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  }else{
                    autovalidateMode =AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },
              );
            },

          ),
          SizedBox(height: 30,),

        ],
      ),
    );
  }
}
