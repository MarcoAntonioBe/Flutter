
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super (key: key);

  @override

Widget build(BuildContext context){
  final _width = MediaQuery.of(context).size.width;
  
  return Scaffold(
    body: Stack(
      children:<Widget> [
      Image.asset('assets/images/Sustraccion.png',
      fit: BoxFit.fill,
      width: _width,
      height: 350.0,
      ),
       Image.asset('assets/images/Shaped subtraction.png',
      fit: BoxFit.fill,
      width: _width,
       height: 350.0,
      ),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Stack(
        alignment:AlignmentDirectional.center,
        children: <Widget>[
          Image.asset('assets/images/Logo background gradient.png',
          width: 180.0,
          ),
          Image.asset('assets/images/Monkey face.png'
          )

        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Meal',
          style: TextStyle(
            fontSize:40.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor 
          ),

          ),
          const SizedBox(width: 3.0,),
          Text('Monkey',
          style: TextStyle(
            fontSize:40.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary

          ),
          )

          ],
        ),
         const SizedBox(height: 5.0),
         const Text('Food delivery')
        ],
      ),
      Positioned(
       bottom: 100.0,
       left: 170.0,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          Container(
            width: 100.0,
            height: 40.0,
            alignment: AlignmentDirectional.center,
    
         
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(30),
          //border: Border.all(color: Colors.grey)
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            onPrimary: Colors.white
          ),
          
          onPressed: () => {},
          child: const Text('Entrar', style: TextStyle(
            fontSize: 15.0),)),
        ),
        const SizedBox(height: 20.0,),
        Container(
          width: double.infinity,
          height: 55.0,

          margin: const EdgeInsets.only(left: 40.0, right: 40.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                   color: Theme.of(context).primaryColor
            ),
           
          ),
         child: const TextButton(
           onPressed: null,
           child: Text('login',
           style: TextStyle(
             fontSize: 18.0,
             color: Colors.white
           ),
           
           ),
         ),
        )

      ]
      )
      
      )


      ],
    ),
  );

}

}