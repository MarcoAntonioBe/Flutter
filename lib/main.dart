// ignore: avoid_web_libraries_in_flutter
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:prueba/pruebaStack.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'demo flutter',
    initialRoute: '/',
    routes: {
      '/' : (context) => const HomePage(),
      '/second' : (context) => const SecondScreen(),
      '/datos' :(context) => const DatosPage(),
        '/stack' :(context) => const PruebaStack(),
      

    },
    //home: HomePage(),
  ));
}
class HomePage extends StatelessWidget{
  const HomePage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Pantalla Inicial'),
        leading: const Icon(Icons.menu),
        elevation: 20.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15)
        )
        ),


        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {}
          )

        
        ],
      ),
       
       
            
            body:Center(
              child: Column(
                children: <Widget>[
                  
                  ElevatedButton(
                  
                  onPressed: (){
                   /* final route = MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
              
                    );
                    */
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Segunda'),
                  
                ),
                ElevatedButton(
                  
                  onPressed: (){
                   /* final route = MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    );
                    */
                    Navigator.pushNamed(context, '/datos');
                  },
                  child: const Text('Datos'),
                  
                ),
                ElevatedButton(
                  
                  onPressed: (){
                   /* final route = MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
              
                    );
                    */
                    Navigator.pushNamed(context, '/stack');
                  },
                  child: const Text('Stack'),
                  
                ),
                ]
              ),
        
            ),
 
    );
    
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      
      body: Center(
        
        child:Column (
          children: <Widget>[

           ElevatedButton(
            
                  
                  onPressed: (){
                    final route = MaterialPageRoute(
                      builder: (context) => SecondScreen(),
        
                    );
                    Navigator.pop(context);
              
                  
                  },
                  
                  child: const Text('Regresar'),
                  
                
                )
                ],
        )
                
               
               
              
             
         ),
         
     
    );
    
  }
}


class DatosPage extends StatelessWidget {
  const DatosPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Página de datos'),
      ),

    body: Center(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment:WrapAlignment.center,
      direction: Axis.vertical,
       spacing: 10.0,

      children: <Widget>[
        
        Image.asset('assets/images/fotop.png',width:180),
        const Text('Marco Antonio Becerra Rodriguez'),
        const Text('Desarrollo Movil Multiplataforma'),
        const Text('TI01SM.20')
        
      ],
      )
    ),
    );
    
  }
}