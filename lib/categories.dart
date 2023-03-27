import 'package:firmwise/mainCategory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CatergoresPage());
}

class CatergoresPage extends StatelessWidget {
  const CatergoresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainDashboard(),
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0XFF584BDD),
        accentColor: Color(0XFFFBF6FF),
      ),
    );
  }
}
