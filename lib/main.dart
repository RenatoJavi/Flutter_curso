import 'package:flutter/material.dart';


import 'package:flutter_application_1/screen/registro.dart';
//import 'package:flutter_application_1/pantallas/home_screen.dart';
//import 'package:flutter_application_1/pantallas/login.dart';
//import 'package:flutter/scheduler.dart';

void main(){

  runApp( MyApp( ));
}

class MyApp extends StatelessWidget{
   //const MyApp({ Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( debugShowCheckedModeBanner: false,
     // home: CounterScreen(), //cual es nuestro widget
     // home:LoginApp(),
     home: Registro(),
      
    );
    
  }
}

