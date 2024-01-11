import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);
 final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:IconButton(
        icon:  Icon(
        icon,
        size: 28,
      ),
        onPressed:onPressed,

      ),
      width:46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),

      ),
    );

  }
}
