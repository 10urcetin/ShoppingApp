import 'package:flutter/material.dart';
import 'package:shop/screens/home/home_screen.dart';

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
      title: 'Shopping UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54)
        ),      
      ),
      home: const HomeScreen(),
    );
  }
}

