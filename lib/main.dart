
import 'package:flutter/material.dart';
import 'package:prueba/routes.dart';
import 'package:prueba/login_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monkey Delivery',
      initialRoute: '/login',
      routes: routes,
      theme: ThemeData(

        primaryColor:Color.fromARGB(251, 253, 81, 2),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color.fromARGB(74, 75, 77, 1)
        )

      )
    )
  );
}


