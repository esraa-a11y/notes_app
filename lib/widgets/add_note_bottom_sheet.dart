
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'custom_text_field.dart';
class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(

      create:  (context) =>AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
      
          child: BlocConsumer<AddNoteCubit,AddNoteState>(
            listener: (context,state){
              if(state is AddNoteFailure){
                print('failed${state.errMessage}');
              }
              if(state is AddNoteSuccess){
                Navigator.pop(context);
              }
      
            },
      
            builder: (context,state) {
                  return ModalProgressHUD(
          inAsyncCall:state is AddNoteLoading ?true : false,
            child: SingleChildScrollView(child: AddNoteForm()));
          },
                  ),
      ),
    );
  }
}

