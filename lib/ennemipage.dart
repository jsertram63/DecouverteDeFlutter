import 'package:flutter/material.dart';

class EnnemiPage extends StatelessWidget {
  const EnnemiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ennemi"),backgroundColor: Colors.green,),
      body: Column(children: [
        Text("Liste de mes ennemis")
      ]),
    );
  }
}