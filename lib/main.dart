import 'package:flutter/material.dart';
import 'package:studiess_app/view/detail_screen.dart';
import 'package:studiess_app/view/home_screen.dart';

void main() => runApp(Studiess());

class Studiess extends StatelessWidget {
  const Studiess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        '/detail' : (context) => DetailScreen(),
      },
    );
  }
}
