



import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/colorFuente.dart';

///widget idependientSTAEEE
class Registro extends StatefulWidget{
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
   
   // throw UnimplementedError();
        // return  widget( //envolverlo en un nuevo widget y el nnuevo widget es un scaffold
        return Scaffold( //tiene un body
     appBar: AppBar(title: const Text('Banca en Linea',style: TextStyle(color: ColorFuente.COLOR_CARIBBEAN_GREEN),),
     elevation: 30,
     
    
     ),
           body:Center (
       // child: Text('cLICK ' , textAlign: TextAlign.start  ,style: TextStyle(color: ColorFuente.COLOR_PRIMARY_DARK,fontSize: 18, fontWeight: FontWeight.bold), ),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.end,
children: <Widget>[
  Text('# Click para incrementar',style: TextStyle(color: ColorFuente.COLOR_SHAMROCK,fontSize: 16, fontWeight: FontWeight.w500),textAlign: TextAlign.left),
  Text( '$counter',style: TextStyle(color: ColorFuente.COLOR_BLUE,fontSize: 26,fontWeight: FontWeight.bold),),

],

          ),
          
        
        

    ),


    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton:FloatingActionButton(
      child: Icon(Icons.playlist_add_check_sharp),
      onPressed: () {
        counter++;

        
        print('hola $counter');

    },) ,
         
         
         );
  }
}