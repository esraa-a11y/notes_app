import 'package:flutter/material.dart';
class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 36,
        backgroundColor:color,
      ),
    ): CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color>colors=[
    Color(0xff012A36),
    Color(0xff29274C),
    Color(0xff7E52A0),
    Color(0xffD295BF),
    Color(0xffE6BCCD),


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount:colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: (){currentIndex=index;
                  setState(() {

                  });},
                  child: ColorItem(isActive: currentIndex==index, color: colors[index],)),
            );
          }),
    );
  }
}
