import 'package:flutter/material.dart';


class GestureDetectorTest extends StatelessWidget {
  const GestureDetectorTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        _MenuWidgets(
          title: 'menu_1',
          msg: 'menu_1 click',
        ),

        _MenuWidgets(
          title: 'menu_2',
          msg: 'menu_2 click',
        ),

        _MenuWidgets(
          title: 'menu_3',
          msg: 'menu_3 click',
        ),
        
      ],
      
    );
  }
}


class _MenuWidgets extends StatelessWidget {
  _MenuWidgets({
    Key? key,
    required this.title,
    required this.msg

  }) : super(key: key);

  String title;
  String msg;

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        _showToast(context,msg);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        // decoration: const BoxDecoration(color: Colors.amber),
        child: Text(title),
      ),
    );
  }

  void _showToast(BuildContext context, String msg) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }
}

