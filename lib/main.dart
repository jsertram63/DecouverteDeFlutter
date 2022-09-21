import 'package:flutter/material.dart';
import 'package:live_futter_7septembre20222/homepage.dart';


void main() {
  runApp(const MyApp());
}

// 2 types de widget
// Statefullwidget : changement d'état  : une interraction avec l'utilisateur 
// statelessWidget : pas de changement : pas d'interraction 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heros',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const HomePage()  // <------ on passe en argument HomePage le widget défini dans homepage.dart
   
    );
  }
}
