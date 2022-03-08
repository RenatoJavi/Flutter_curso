
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

//const CounterScreen ({Key? key) : super (key: key);


  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  //propiedad
    int counter = 0;
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 20);
    
   // throw UnimplementedError();
return  Scaffold(
  appBar: AppBar(
    title: const Text('CounterScreen', ),    
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
  floatingActionButton:  
  
  Row(
    children: [
      FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: (){      
          
              setState(() {
                          counter++;
                        });
         },
        backgroundColor: Colors.green[300],
        //child: const Icon(Icons.navigate_next),
      ),
    ],
  ),

);

  }
}