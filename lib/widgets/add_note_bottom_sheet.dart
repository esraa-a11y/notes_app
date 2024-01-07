import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'custom_text_field.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(hint: 'Title',),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: 'Content',maxLines: 5,),
              SizedBox(height: 40,),
              CustomButton(),
              SizedBox(height: 30,),

            ],
          ),
        ),

    );
  }
}
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(child: Text('Save',style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),)),
    );
  }
}
