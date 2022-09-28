// #DEFINE MAVARIABLE 120

import 'package:flutter/material.dart';

class CartePage extends StatelessWidget {
  const CartePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carte de l'univers"),
      backgroundColor: Colors.green,
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            
            color: Colors.red,)), // 2 /7
        Expanded(child: Container(color: Colors.blue,)), // 1
        Expanded(
          flex:3, // 3 => 3/6  - 3/7
          child: Row(children: [
            Expanded(
          flex: 1,
          child: Container(
            
            color: const Color.fromARGB(120, 180, 180, 106),)),
            Expanded(
          flex: 2,
          child: Container(
            
            color: const Color.fromARGB(108, 164, 102, 205),)),

          ])),
         
          
        Expanded(child: Container(color: Colors.green,)) // 1
    
      
    ]),
    );
  }
}