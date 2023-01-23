import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:routes_sample/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (builder){
                return HomeScreen();
              }), (route) => route.isFirst);
            }, child: const Text("login")),
             ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            }, child: const Text("SignUp")),
          ],
        ),
      ),
    );
  }
}