import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon}) : super(key: key);
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
      icon,
        size: 28,
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
