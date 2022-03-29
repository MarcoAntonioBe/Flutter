import 'package:flutter/cupertino.dart';
import 'package:prueba/login_page.dart';

import 'home_page.dart';

final routes = <String, WidgetBuilder>{

  '/' : (BuildContext context) => const HomePage(),
  '/login' : (BuildContext context) => const LoginPage()


};