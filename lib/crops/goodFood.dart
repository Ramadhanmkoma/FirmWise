import 'package:flutter/material.dart';

class GoodFood extends StatelessWidget {
  final String cropName;
  GoodFood({required this.cropName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Good Food - $cropName',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Image.asset('assets/crop-images/3.jpeg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Coconuts are not only delicious and versatile, but they also offer numerous health benefits. Coconuts are a rich source of vitamins and minerals, including vitamin C, potassium, magnesium, and copper. They are also high in fiber and healthy fats, which can help reduce cholesterol levels and support heart health. Coconut meat, water, and oil can be used in a variety of dishes, from sweet to savory, and can be enjoyed in many different ways. Additionally, coconut oil has antimicrobial properties and can be used in natural beauty products for hair and skin care. By incorporating coconuts into your diet, you can enjoy a tasty and nutritious food that offers a wide range of benefits for your health and well-being.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
