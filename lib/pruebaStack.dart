import 'package:flutter/material.dart';

import 'main.dart';

class PruebaStack extends StatelessWidget {
  const PruebaStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       title: const Text ('Pagina stack'), 
     ),

     body: Center(
       child: SizedBox(
         width: 300.0,
         height: 300.0,
         child: Center(
          child: Stack(

            children:<Widget> [
              Flexible(
                
  child: new Container(
    padding: new EdgeInsets.only(right: 13.0),
    
    child: new Text(
    
      'Marco Antonio B.R ',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.right,
      style: new TextStyle(
        fontSize: 13.0,
        fontFamily: 'Roboto',
        color: Color.fromARGB(255, 252, 249, 249),
        fontWeight: FontWeight.bold,
      ),
    ),
    width: MediaQuery.of(context).size.width,
  height: 100,
  decoration: BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fill,
      image: NetworkImage("https://www.elsoldecuernavaca.com.mx/local/aivxwk-2cueh1.jpeg/ALTERNATES/LANDSCAPE_400/2CUEH1.jpeg"),
    ),
  ),
  
  ),
  
),
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
          ),
),
       ),
     ),
    );
  
  }
}