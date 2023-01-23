import 'package:flutter/material.dart';
import 'package:routes_sample/home_screen.dart';
import 'package:routes_sample/login_screen.dart';
import 'package:routes_sample/main.dart';
import 'package:routes_sample/second_screen.dart';

class MyRouter{
  Route onGenerateRoute(RouteSettings settings){
    final args  = settings.arguments;
    switch(settings.name){
      case '/': 
      return MaterialPageRoute(builder: (ctx)=>const MyHomePage(title:"Home"));
      case '/named-route':
      return MaterialPageRoute(builder: (ctx)=>SecondScreen(name:args));
      case '/login':
      return MaterialPageRoute(builder: (ctx)=>const LoginScreen());
      case '/home':
      return MaterialPageRoute(builder: (ctx)=> HomeScreen());
    default:
    return MaterialPageRoute(builder: (ctx)=>const MyHomePage(title:"Home"));
    }
  }
}