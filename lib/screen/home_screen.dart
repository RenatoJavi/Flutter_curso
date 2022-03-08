
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 20);
    //propiedad
    int counter = 15;    
   // throw UnimplementedError();
return  Scaffold(
  appBar: AppBar(
    title: const Text('Informe', ),    
     leading: Icon(Icons.done_all),
     elevation: 15,
     ), 
  
  backgroundColor:Colors.amber[100],
  body: Center(

      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children:  <Widget> [ 
          
          Expanded(child: const Text('Click counter',style:fontSize30 ,textAlign:TextAlign.center),),
          Expanded(child: Text('$counter',style: fontSize30  ,textAlign:TextAlign.center ),),




        ],

      ),


  ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  floatingActionButton:  FloatingActionButton(
    child: const Icon(Icons.plus_one),
    onPressed: (){ 
  
      counter++;
          print('hola mundo: $counter');
     },
    backgroundColor: Colors.green[300],
    //child: const Icon(Icons.navigate_next),
  ),

);

  }



}