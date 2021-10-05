import 'package:flutter/material.dart';
import 'pagina.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get kTextColor => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roupa Fitness Tecnológica',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Pagina(),
    );
  }
}
