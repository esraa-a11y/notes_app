import 'package:flutter/material.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
                'Flutter Tips' ,style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0,bottom: 16),
              child: Text(
                  'Build your career with esraa gamal',style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 18,
              ),
              ),
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.delete,color: Colors.black,size:24,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text('jan3 , 2024',style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 16,
            ),),
          ),
        ],
      ),
    );
  }
}
