import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  // const SecondScreen({super.key});
  static const routeName = '/named-route';
  final name;

  SecondScreen({this.name});
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      
      appBar: AppBar(title: Text("Second Screen"),
      leading: IconButton(onPressed: (){
          Navigator.of(context).popAndPushNamed('/');
        }, icon: Icon(Icons.arrow_back)),
      
      ),
      body: Center(
        child: Text('Sample named route name is $name'),
      ),
    );
  }
}