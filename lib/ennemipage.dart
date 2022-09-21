import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EnnemiPage extends StatelessWidget {
  const EnnemiPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Ennemi"),backgroundColor: Colors.green,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children: [
          buildTitleText(),
          Container(height: 250,
          //width: size.width,
          color: const Color.fromARGB(198, 179, 24, 24),),
            Container(height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    height: 250,
                    width: 120,
                    color: Color.fromARGB(255, 175, 255, 174),
                  ),
                    Container(
                    height: 250,
                    width: 120,
                    color: Color.fromARGB(255, 204, 18, 207),
                  ),
                    Container(
                    height: 250,
                    width: 120,
                    color: Color.fromARGB(255, 34, 16, 173),
                  ),
                    Container(
                    height: 250,
                    width: 120,
                    color: Color.fromARGB(255, 9, 63, 50),
                  )
                ]),
            
              ]),
            ),
          //width: size.width,
          color: const Color.fromARGB(197, 9, 95, 217),),
            Container(height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 250,
                  width: 120,
                  color: Color.fromARGB(255, 174, 237, 255),
                ),
                  Container(
                  height: 250,
                  width: 120,
                  color: Color.fromARGB(255, 254, 174, 255),
                ),
                  Container(
                  height: 250,
                  width: 120,
                  color: Color.fromARGB(255, 183, 174, 255),
                ),
                  Container(
                  height: 250,
                  width: 120,
                  color: Color.fromARGB(255, 9, 63, 50),
                )
              ]),
            ),
          width: size.width,
          color: const Color.fromARGB(197, 24, 179, 37),),
            Container(height: 250,
          //width: size.width,
          color: const Color.fromARGB(197, 189, 159, 23),)
        ],),
      )
    );
  }
}


Widget buildTitleText(){
  return const Text("Mes ennemis",
  style: TextStyle(fontFamily:"sansita",),
  textScaleFactor: 2,
  textAlign: TextAlign.center,

  );

}