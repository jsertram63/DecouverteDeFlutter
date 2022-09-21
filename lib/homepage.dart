
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:live_futter_7septembre20222/cartepage.dart';
import 'package:live_futter_7septembre20222/ennemipage.dart';
//import 'package:live_futter_7septembre20222/monappbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// le widget Column a une propriété children (enfants) car on va empiler les enfants verticalement


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      title:Text("Mon Heros"),
      backgroundColor: Colors.green,),
    drawer: Drawer(
      child: ListView(
        children: [
             const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Text('Menu'),
      ),
      ListTile(
        title:const Text("Mon heros",style: TextStyle(
          fontFamily:'Sansita',
          fontWeight: FontWeight.w800,
          fontSize: 20.0
        ),),
        // onTap : gesture qui va prend en argument une fonction 
        onTap: (){
        
          Navigator.pop(context);
        
          print("Appui sur Mon heros");
        },
      ),
      ListTile(title: Text("Ennemis",
      
style: TextStyle(fontFamily: "Sansita", fontWeight: FontWeight.w800,fontSize: 20.0),
      ),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute( builder: (context) => EnnemiPage())
          );
          print("ennemmi");
        },
      ),
      ListTile(title: Text("Carte du monde",style: TextStyle(
          fontFamily:'Sansita',
          fontWeight: FontWeight.w800,
          fontSize: 20.0
        ),),
         onTap: (){
          print("carte du monde");
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => CartePage())
          );
        },
      
      )
          
        ],
      ),

    ),

    body:Column(children: [
      Text("Flutter le heros",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w800
      )),
      // circular Avatar pour afficher une image dans un rond
      CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100,
        
        
         child: ClipRRect(
        child: Image.asset('assets/images/robot.png',),
        borderRadius: BorderRadius.circular(100.0),
    ),
      ),
      Divider(
        color: Colors.black,
        indent: 20,
        endIndent: 26,
        thickness: 2,
      ),
      Text("Mes caractéristiques",
      style: TextStyle(
        fontSize: 18.0
      ),)
      
      
      
      
    ]),
    );
  }
}