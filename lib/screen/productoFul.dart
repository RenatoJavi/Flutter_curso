



import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/colorFuente.dart';

// ignore: camel_case_types
class ProductoFul extends StatefulWidget{


  @override
  _ProductoFulState createState() => _ProductoFulState();
}

// ignore: camel_case_types
class _ProductoFulState extends State<ProductoFul> {
  int counter=0; 
  @override
  Widget build(BuildContext context) {
    
    //int counter=0; //deja de ser una variables y le pasa,os a ser una propiedad
    //throw UnimplementedError();
    return Scaffold( 
      appBar: AppBar( 
         title: Text('Producto'),
         elevation: 20,
         
         
         ),

         
    body: Center(
      
      
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text('# Click para incrementar helados',style: TextStyle(color: ColorFuente.COLOR_SHAMROCK,fontSize: 16, fontWeight: FontWeight.w500),textAlign: TextAlign.left),
  Text( '$counter',style: TextStyle(color: ColorFuente.COLOR_BLUE,fontSize: 26,fontWeight: FontWeight.bold),),
          ],
      ),

      
    ),


floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  
        
         floatingActionButton: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [ 
                        
             FloatingActionButton(
                        child: Icon(Icons.exposure_plus_1_rounded),                     
               
               onPressed: (){             
                 
                 setState(() {   
                   counter++; //es una funcion anonima
                                
                              });
                
               }             
               
               ),
               SizedBox(width: 10.5,),

                  FloatingActionButton(
                        child: Icon(Icons.restore_page_sharp),
                     
               
               onPressed: (){             
                 print( 'hoa $counter');
                 setState(() {   
                   counter=0; //es una funcion anonima
                                
                              });
                
               }              
               
               ),

               SizedBox(width: 20),//separo los circulos

                 FloatingActionButton(
                        child: Icon(Icons.exposure_minus_1_outlined),
                     
               
               onPressed: (){             
                 print( 'hoa $counter');
                 setState(() {   
                   counter--; //es una funcion anonima
                                
                              });
                
               }              
               
               ),
               
           ],
         ),


      );
  } 
}