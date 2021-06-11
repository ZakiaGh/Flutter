import 'package:flutter/material.dart';
import 'inscription.dart';
import 'connexion.dart';

class Accueil extends StatelessWidget {
  const Accueil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Column(children:<Widget> [
        Container(
          height: 50,
        ),
       
                SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.07,
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Inscription();
                  },
                  ),
              );
            },
            padding: EdgeInsets.symmetric(vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Colors.green,
            elevation: 5.0,
            child: Center(
              child: Text(
                "Connexion",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.07,
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Connexion();
                  },
                  ),
              );
            },
            padding: EdgeInsets.symmetric(vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Colors.green,
            elevation: 5.0,
            child: Center(
              child: Text(
                "Inscription",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),

      ],)))),
    );
  }
}