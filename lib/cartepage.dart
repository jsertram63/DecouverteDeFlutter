

import 'package:flutter/material.dart';

class CartePage extends StatelessWidget {
  const CartePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carte de l'univers"),
      backgroundColor: Colors.green,
      ),
      body: Center(child: Text("La carte de l'univers")),
    );
  }
}