



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

  void increase(){ //funcion 1+
      counter ++;
      setState(() {
        
      });

        }

  void decrease(){ //funcion decrecer -!
    counter--;
          setState(() {
                
              });
        }
  void setNumero(){
          counter=0;
          setState(() {
                
              });
        }
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
        
         floatingActionButton: CustomFloatingActions(

           increaseFn: increase, //envio la referenci -NO LA ESTOY EJECUTANTO
          decreaseFn: decrease,
          setFn: setNumero,
          
        
         ),


      );
  } 
}
//se ha creado un Widget totalmente indpendiente
class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn ;
  final Function decreaseFn;
  final Function setFn;
  const CustomFloatingActions({ //control +. añadir final  parametres
    Key key, 
    @required this.increaseFn,  //recivo el argumento y le asigno a una propiedad
    //uso @required pq la necesito siempre
    @required this.decreaseFn,
    @required this.setFn,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [ 
                   
        FloatingActionButton(
                   child: Icon(Icons.exposure_plus_1_rounded),                     
          
          onPressed: ()=>increaseFn(),  //mansdo a ejecutar la funcion      
          
          ),
          SizedBox(width: 10.5,),

             FloatingActionButton(
                   child: Icon(Icons.restore_page_sharp),          
          onPressed: ()=>setFn(),// mando a ejecutar la funcion             
          
          ),

          SizedBox(width: 20),//separo los circulos

            FloatingActionButton(
                   child: Icon(Icons.exposure_minus_1_outlined),
                         
          onPressed: ()=>decreaseFn(),   ////manfo a ejecutar la funcion
          
          ),
          
      ],
    );
  }
}