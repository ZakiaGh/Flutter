import 'package:flutter/material.dart';
class EditProfil extends StatefulWidget {
  const EditProfil({ Key? key }) : super(key: key);

  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
      children: <Widget>[
        Container(
          height: size.height*0.3,        ),
        TextFormField(
            maxLength: 25,
            decoration: const InputDecoration(
                labelText: 'Nom',
                hintText: 'Ex: Ghouli ',
                border: OutlineInputBorder()),
          
            onChanged: (value) {
            
            },
          ),
      ],
    ),
    );
  }
}