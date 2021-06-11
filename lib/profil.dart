import 'package:flutter/material.dart';
import 'chat.dart';
import 'editprofil.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _lights = false;
  Color _color = Colors.blue;
  
  String _utilisateur = "utilisateur";
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer:Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [

          ],)
      ),
      appBar: AppBar(
        backgroundColor: _color,
        actions: <Widget>[
          
          FloatingActionButton(
                    onPressed: (){
                      Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EditProfil();
                  },
                  ),
              );
                    },
                    child: Icon(Icons.switch_account),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
          Switch(
            value: _lights,
            onChanged: (value) {
              setState(() {
                _lights = value;
                if (_lights){
                  _color=Colors.green;
                }else{
                  _color=Colors.blue;
                }
                print(_lights);
              });
            },
            activeTrackColor: Colors.green,
            activeColor: Colors.orangeAccent,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children : <Widget>[
              Text("Welcome $_utilisateur",
              style: TextStyle(
                fontSize: 40,
              ),
              ),
              Image.asset("assets/profil.jpg",
              height: 200,
              width: 200,),
               SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.07,
          child: RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Chat();
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
                "chatter",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
          ]
        ),
      ),
    );
  }
}