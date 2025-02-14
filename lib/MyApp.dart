
import 'package:flutter/material.dart';
import 'features/Lk/lk.dart';
import 'features/auth/auth.dart';
import 'features/home/home.dart';
import 'features/modelView/modelView.dart';
import 'features/register/register.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      routes:{
        '/':(context) => MyHomePage (),
        '/home' :(context)=>home(),
        '/register' :(context) => Register(),
        '/lk':(context) => lk(),
        '/model':(context) => Flutter3d()
      }
    );
  }
}