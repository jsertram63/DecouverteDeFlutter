
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:live_futter_7septembre20222/cartepage.dart';
import 'package:live_futter_7septembre20222/ennemipage.dart';

//import 'package:live_futter_7septembre20222/monappbar.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

// le widget Column a une propriété children (enfants) car on va empiler les enfants verticalement


class _HomePageState extends State<HomePage> {

  Map<String,bool> caracteristiques = {
    "diplome du super hero":false,
    "apprenti":false,
    "Medaille du courage":false
  };

   String nom="";
  String prenom="";
  bool switchValue = true;
  late TextEditingController controller;


  @override
  void initState() {
    // TODO: implement initState
    print("INIT");
    super.initState();
    controller = TextEditingController();
    controller.addListener(_ecouteurTexte); // <----- on branche la fonction d'écoute
  }
    void  _ecouteurTexte() {
  print("montrer texte saisie");
  setState(() {
    prenom = controller.text;
    print(controller.text);
  });
}

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      title:const Text("Mon Heros"),
      backgroundColor: Colors.green,),
    drawer: Drawer(
      child: ListView(
        children: [
              DrawerHeader(
        decoration:const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(children:const [
          Text("Menu",style: TextStyle(fontFamily:"sansita",fontSize: 20),),
          Padding(padding: EdgeInsets.only(top:10),
          child:  SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/robot.png'),
            
              ),

            ),
          )



        ],),
     
     
     
     
      ),
      ListTile(
        title:Row(
          children: const[
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(Icons.access_alarm,
                size: 26.0,
                color: Colors.black,

                
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("Mon heros",style: TextStyle(
                fontFamily:'Sansita',
                fontWeight: FontWeight.w800,
                fontSize: 20.0
            ),),
              ),
          ],
        ),
        // onTap : gesture qui va prend en argument une fonction 
        onTap: (){
        
          Navigator.pop(context);
        
          print("Appui sur Mon heros");
        },
      ),
      ListTile(title: Row(
        children:const [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.fence_outlined,
            color: Color.fromARGB(255, 201, 179, 143)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Ennemis",
            
        style: TextStyle(fontFamily: "Sansita", fontWeight: FontWeight.w800,fontSize: 20.0),
            ),
          ),
        ],
      ),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute( builder: (context) => EnnemiPage())
          );
          print("ennemmi");
        },
      ),
      ListTile(title: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.ac_unit_sharp,color: Colors.black,),
          ),
          
          Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Text("Carte du monde",style: TextStyle(
                fontFamily:'Sansita',
                fontWeight: FontWeight.w800,
                fontSize: 20.0
              ),),
          ),
        ],
      ),
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

    body:SingleChildScrollView(
      child: Column(children: [
        Text("Flutter le heros",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w800
        )),
        // circular Avatar pour afficher une image dans un rond
    
      SizedBox(
                height: 150,
                width: 150,
                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/robot.png'),
              
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
        ),),Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(hintText: "Entrez ton nom",
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),onChanged: (value) {
            //print("valeur saisi : $value");
            print("On changed");
           setState(() {
             nom = value;
             print(nom);
            
           });
    
          },),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(hintText:"Entrez ton Prenom", border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            controller: controller,
          ),
        ),
        Padding(padding:
          const EdgeInsets.all(15),
          child: Row(children: [
            Text((switchValue ? "Homme" : "Femme")),
            Switch(
              activeColor: Colors.red,
              value: switchValue, onChanged: (bool){
              setState(() {
                switchValue = bool;
                print(switchValue);
              });
            })
    
          ]),
        ),
        Padding(padding: EdgeInsets.all(15),
        child: constructListeDeChoix(),
        ),
       
        Padding(padding: EdgeInsets.all(15),
        child: Text(prenom),
        ),
         Padding(padding: EdgeInsets.all(15),
        child: Text(nom),
        ),
        Padding(padding: EdgeInsets.all(15,),
        child: recapCaracteristiques(),
        )
      ]),
    ),
    );
  }
  // fonction qui va créer une colonne des items à cocher

  Column constructListeDeChoix(){
    List<Widget> items = [];
    caracteristiques.forEach((caract, valide) {
     Widget row = Row(children: [
      Text(caract),
      Checkbox(value:valide, onChanged: ((newValue){
        setState(() {
          // on met à jour notre tableau de caractéristiques
          caracteristiques[caract] = newValue ?? false;
        });
      }))

     ],);

     items.add(row);
     

    });
     return Column(children: items,);
  } 

  Column recapCaracteristiques(){
    List<Widget> items = [];
    // on parcours notre liste de caractéristiques
    caracteristiques.forEach((cara, valide) {
      if (valide == true){
        Widget row = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(cara)
        ],);
        items.add(row);
      }
     });
     return Column(children: items);


  }



}