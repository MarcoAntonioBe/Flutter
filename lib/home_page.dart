import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage  ({Key? key}) : super(key: key);


  @override
  Widget build (BuildContext context){

    return Scaffold(
body: Center(
     child: Container(

       alignment: AlignmentDirectional.center,
       decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           image: AssetImage('assets/images/fondo.png'),
           opacity: 0.2

         )
       ),



       child: Column(
         mainAxisAlignment:  MainAxisAlignment.center,

         children: <Widget>[
           Stack(
             alignment: AlignmentDirectional.center,
             children: <Widget> [
               Image.asset('assets/images/Logo background gradient.png',
               width: 100.0
               ),
               Image.asset('assets/images/Monkey face.png',
               width: 100
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const <Widget>[
               Text('Meal',
               style: TextStyle(
                 fontSize: 35.0,
                 fontWeight: FontWeight.bold
               )
               
        
               ),
               SizedBox(width: 5.0),
               Text('Monkey')

             ],

           )
               
           //Aqui me quede xd 
           

                     
           
         ],

 
),
     ),

),

    );
  }

}