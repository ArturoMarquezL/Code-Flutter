import 'package:decremeto_incremento/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home' : (BuildContext context) =>HomePage(),
      },
    );
  }
}
