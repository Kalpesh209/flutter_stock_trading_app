import 'package:flutter/material.dart';
import 'package:flutter_stock_trading_app_ui/screens/home_page_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        
        primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
    );
  }
}

