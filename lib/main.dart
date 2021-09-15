

 

import 'package:flutter/material.dart';

import 'blackdress.dart';

// import 'widgets/bottom_tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow[700]),
      home: BlackSaree(),
    );
  }
}
