import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen"),),
      body: Center(
        child: Text('Sample Unnamed route title is $title'),
      ),
    );
  }
}