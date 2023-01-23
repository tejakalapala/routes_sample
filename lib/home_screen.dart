import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Back")),
          ElevatedButton(onPressed: (){
            Navigator.of(context).popUntil((route) {
   if (route.settings.name != "/") return false;
   return true;
});
          }, child: Text("Backtologin")),
        ],
      ),
    );
    
  }
}