import 'package:flutter/material.dart';

class pagina2 extends StatefulWidget {
  const pagina2({Key? key}) : super(key: key);

  @override
  State<pagina2> createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
  final _edad =TextEditingController();
  final _nombre =TextEditingController();
  final _fechanac =TextEditingController();
  String edad="Edad:";
  String nombre="Nombre:";
  String fechanac="Fecha de nacimiento:";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
          Center(
            child: Text("Datos",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold)),
          ),
        SizedBox(height: 60,),
        TextField(
          controller: _edad,
          decoration: InputDecoration(
            labelText: ("Ingrese su edad")
          ),
        ),
        SizedBox(height: 60,),
        TextField(
          controller: _nombre,
            decoration: InputDecoration(
              labelText: ("Nombre completo")
            ),
        ),
        SizedBox(height: 60,),
        TextField(
          controller: _fechanac,
          decoration: InputDecoration(
            labelText: ("Fecha de nacimiento (dd/mm/aaaa)")
          ),
        ),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){
          String e;
          String n;
          String f;
          setState(() {
            e=_edad.text;
            n=_nombre.text;
            f=_fechanac.text;
            showDialog(
                context:context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Datos"),
                    content:Text("${edad} ${e}\n${nombre} ${n}\n${fechanac} ${f}"),
                    actions:<Widget>[
                      FloatingActionButton(
                          child: Text("Cerrar"),
                          onPressed: (){
                            Navigator.of(context).pop();
                          }
                      )
                    ],
                  );
                }
            );
          });
        }, child: Text("Registrarse")),
      ],
    );
  }
}
