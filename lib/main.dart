import 'package:flutter/material.dart';
import 'package:routes_sample/login_screen.dart';
import 'package:routes_sample/my_router.dart';
import 'package:routes_sample/second_screen.dart';
import 'package:routes_sample/send_data_screen.dart';
import 'package:routes_sample/first_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final MyRouter myRouter = MyRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // initialRoute:'/',
      // routes: {
      //   '/':(context) => MyHomePage(title: 'Flutter Demo Home Page'),
      //   NamedPushRoute.routeName:(context) => NamedPushRoute(),
        
      // },
      onGenerateRoute: myRouter.onGenerateRoute
      // onUnknownRoute: ((settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (context) => UnNamedRoutePage());
      // }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routes Sample"),),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return FirstScreen(title: "msf",);
              })));
            }, child: const Text("Unanamed Route")),
            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, SecondScreen.routeName,arguments: "Teja");
            }, child: const Text("Named Route")),
            TextButton(onPressed: (){
              getData();
            }, child: const Text("Get Data")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, LoginScreen.routeName,arguments: "Teja");
            }, child: const Text("Login screen")),
            
          ],
        ),
      ),
    );
    }

    void getData() async {
      final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SendDataScreen(),
    ));
    setState(() {
      print(result);
    });
    }
}
