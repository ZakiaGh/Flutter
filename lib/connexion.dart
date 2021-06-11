import 'package:flutter/material.dart';
class Connexion extends StatefulWidget {
  const Connexion({ Key? key }) : super(key: key);

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
    bool _isObscure = true;

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

           TextFormField(
            maxLength: 25,
            decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Ex: test@test.com ',
                border: OutlineInputBorder()),
            
            onChanged: (value) {
            },
          ),
          TextField(
                  obscureText: _isObscure,
                  decoration: new InputDecoration(
                      hintText: "votre mot de passe",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )),
                  onChanged: (value) {
                  },
                ),
                SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.07,
          child: RaisedButton(
            onPressed: (){},
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

      ],)))),
    );
  }
}