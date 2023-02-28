import 'package:flutter/material.dart';
import 'package:grocery_app/Screens/intropage.dart';
import 'package:grocery_app/utils/cartmodal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart_Modal(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grocery App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const IntroScreen(),
      ),
    );
  }
}
