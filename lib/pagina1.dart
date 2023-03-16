import 'package:flutter/material.dart';

class pagina1 extends StatefulWidget {
  const pagina1({Key? key}) : super(key: key);

  @override
  State<pagina1> createState() => _pagina1State();
}

class _pagina1State extends State<pagina1> {
  final edad= TextEditingController();
  String mesaje="";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Center(
          child: Text("Confirmacion de edad",style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        SizedBox(height: 60,),
        TextField(
          controller: edad,
          decoration: InputDecoration(
            labelText: "Ingrese su edad",
            prefixIcon: Icon(Icons.account_circle)
          ),
        ),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: (){
          int _edad = int.parse(edad.text);
          setState(() {
            if(_edad>=18){
              mesaje="Usted es mayor de edad,puede continuar";
            }else{
              mesaje = "Usted no puede conntinuar, no es mayor de edad";
            }
          });
        }, child: Text("Verificar edad")),
        SizedBox(height: 40,),
        Text("$mesaje",style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ), textAlign:TextAlign.center,)
      ],
    );
  }
}
