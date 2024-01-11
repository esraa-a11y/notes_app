import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
          color: Colors.white,fontSize: 28),),
        Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon:icon ,
        ),
      ],
    );
  }
}
