import 'package:flutter/material.dart';

class GettingFertilizer extends StatelessWidget {
  final String animalName;
  GettingFertilizer({required this.animalName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Getting Fertilizer - $animalName',
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
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return List.generate(5, (index) {
                return CheckedPopupMenuItem();
              });
            },
          ),
        ],
        elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Image.asset('assets/livestock-images/yak.jpg'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Yaks require a balanced nutrient supply for healthy growth and optimal productivity. Providing the right type and amount of fertilizer can improve the quality and quantity of the forage, which is the primary source of nutrition for yaks. Commonly used fertilizers for yak pasture include nitrogen, phosphorus, and potassium. It is important to consult with a local agricultural expert to determine the appropriate type and amount of fertilizer to use for your specific soil and climatic conditions. Proper application timing and techniques are also crucial for maximizing the benefits of fertilization while minimizing the risk of environmental damage.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
