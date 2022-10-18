import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_code_project/route/app_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              child: Text('제스쳐 디텍터'),
              onTap: (){
                AutoRouter.of(context).push(const GestureDetectorTest());
              },
            )
          ],
        ),
      ),
    );
  }
}
