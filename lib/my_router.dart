import 'package:flutter/material.dart';
import 'package:routes_sample/main.dart';
import 'package:routes_sample/second_screen.dart';

class MyRouter{
  Route onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case '/': 
      return MaterialPageRoute(builder: (ctx)=>MyHomePage(title:"Home"));
      case '/named-route':
      return MaterialPageRoute(builder: (ctx)=>SecondScreen());
    default:
    return MaterialPageRoute(builder: (ctx)=>MyHomePage(title:"Home"));;
    }
  }
}