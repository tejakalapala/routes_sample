import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static const routeName = '/named-route';
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: Center(
        child: Text('Sample named route name is $name'),
      ),
    );
  }
}