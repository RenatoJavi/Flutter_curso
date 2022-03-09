





import 'package:flutter/material.dart';

import 'package:flutter_application_1/utility/colorFuente.dart';

class Producto extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    
    int counter=0;
    //throw UnimplementedError();
    return Scaffold( 
      appBar: AppBar( 
         title: Text('Producto'),
         elevation: 20,
         
         
         ),
         
    body: Center(
      
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('# Click para incrementar',style: TextStyle(color: ColorFuente.COLOR_SHAMROCK,fontSize: 16, fontWeight: FontWeight.w500),textAlign: TextAlign.left),
  Text( '$counter',style: TextStyle(color: ColorFuente.COLOR_BLUE,fontSize: 26,fontWeight: FontWeight.bold),),
          ],
      ),

      
    ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         floatingActionButton: FloatingActionButton(
                    child: Icon(Icons.icecream),
                 
           
           onPressed: (){

             counter++;
             print( 'hoa $counter');

             
           }
           
           
           ),


      );
  } 



}