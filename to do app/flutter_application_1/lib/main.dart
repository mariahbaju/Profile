import 'package:flutter/material.dart';
import 'package:project_to_do_app/Indexpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context,child){
        return Directionality(
        textDirection: TextDirection.rtl,
        child: child!,
        );
      },
      home: Indexpage(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}