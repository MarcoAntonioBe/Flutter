import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
 class MyStatefulWidget extends StatefulWidget {
   MyStatefulWidget({Key? key}) : super(key: key);
 
   @override
   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
 }
 
 class _MyStatefulWidgetState extends State<MyStatefulWidget> {
   late TextEditingController _controller;

   bool _isChecked = false;



   @override
   void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();

  }
  
   @override
   void dispose() {
    // TODO: implement initState
    super.initState();
    _controller.dispose();
    
  }
   @override


   Widget build(BuildContext context) {
     return Scaffold(
 body: Center(
   child: Padding(
     padding: const EdgeInsets.all(50.0),
     child: Column(

       mainAxisAlignment: MainAxisAlignment.center,

children: <Widget>[
  Image.network('https://blackcatcard.com/images/card-main.png'),
inputEmail(_controller),
SizedBox(height: 10),
InputPassword(),
InputCard(),
Checkbox(
  value: _isChecked,
onChanged: (bool? value){
  setState(() {
     _isChecked = value!;
  });
 

},
),
const SizedBox(height: 10),
ElevatedButton(
  onPressed: () => {},
  child: const Text('Enviar'))

        ]
      )
    ),
  ) 
 );
 }
 }

 Widget InputCard(){
return Container(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 2.0)
    ),
  child:   TextField(
  
    
  
    keyboardType: TextInputType.number,
  
    inputFormatters: [
  
      FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
  
      LengthLimitingTextInputFormatter(16)
  
    ],
  
    decoration: const InputDecoration(
  
        
  
        // icon: Icon(Icons.contact_mail),
  
        prefixIcon: Icon(Icons.card_giftcard),
  
        //labelText: 'correo',
  
        labelText: 'tarjeta',
  
          hintText: '1234-1234-1234-1234'
  
    ),
  
  ),
);
 }
 

Widget InputPassword() {
return Container(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 2.0)
    ),
  child:   TextFormField(
  
    keyboardType: TextInputType.number,
  
    inputFormatters: [
  
      FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
  
      LengthLimitingTextInputFormatter(16)
  
    ],
  
    decoration: const InputDecoration(
  
        
  
        // icon: Icon(Icons.contact_mail),
  
        prefixIcon: Icon(Icons.card_giftcard),
  
        //labelText: 'correo',
  
        labelText: 'Contraseña',
  
          hintText: '*********'
  
    ),
  
  ),
);
}

Widget inputEmail(_controller){
  return  Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 2.0)
    ),
    child: TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    controller: _controller,
    decoration: const InputDecoration(
      border: InputBorder.none,
        
        // icon: Icon(Icons.contact_mail),
        prefixIcon: Icon(Icons.contact_mail),
        labelText: 'correo',
        hintText: 'micorreo@corre0.com'
    ),
),
  );
}

 /*


const SizedBox(height: 20.0,),
 TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
    LengthLimitingTextInputFormatter(16)
  ],
  decoration: const InputDecoration(
      
      // icon: Icon(Icons.contact_mail),
      prefixIcon: Icon(Icons.card_giftcard),
      //labelText: 'correo',
      labelText: 'tarjeta',
        hintText: '1234-1234-1234-1234'
  ),
),

*/

 /*
 onSubmitted: (String value) async{
await showDialog <void>(
  context: context,

builder: (BuildContext context){
  return AlertDialog(

  title: Text('Prueba Dialogo'),
  content: Text('Ha escrito "$value",de longitud: ${value.characters.length}'),
actions: <Widget>[
  TextButton(onPressed: () => Navigator.pop(context),
  
     child: const Text('ok  '),
     
     )

],

  );
  }
);
       }, 
       
       */