import 'package:flutter/material.dart'; // Standard material design

void main() {
  // Always use const for the root widget if possible for better performance
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual layout structure
    return Scaffold(
     appBar: AppBar(
      title: Text("Inventory App"),
      titleSpacing: 0,
      centerTitle: true,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      elevation: 6,
      backgroundColor: Colors.green,
     )
    );
  }
}