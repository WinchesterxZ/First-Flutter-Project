import 'package:flutter/material.dart';
import 'package:my_first_project/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
        fontFamily: 'Suwannaphum', // set the default font
        useMaterial3: true, // Use Material 3 design
      ),
      home: MyHomePage(),
    );
  }
}
