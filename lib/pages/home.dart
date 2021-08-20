import 'package:ac_00_complete_guide/widgets/quiz.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New App'),
      ),
      body: Center(
        child: Quiz(),
      ),
    );
  }
}
