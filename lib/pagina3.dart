import 'package:flutter/material.dart';

class paginna3 extends StatefulWidget {
  const paginna3({Key? key}) : super(key: key);

  @override
  State<paginna3> createState() => _paginna3State();
}

class _paginna3State extends State<paginna3> {

  List foto =[
    "assets/foto1.png",
    "assets/foto2.jpg"
  ];
  int _indice=0;

  void tomarFoto(){
    setState(() {
      _indice=1;
    });
  }
  void eliminarFoto(){
    setState(() {
      _indice=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        SizedBox(height: 40,),
        Center(
          child:Text("Fotografia",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),)
        ),
        SizedBox(height: 60,),
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(foto[_indice]),
        ),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){tomarFoto();}, child: Text("Tomar foto")),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){eliminarFoto();}, child: Text("Elininar foto"))
      ],
    );
  }
}

