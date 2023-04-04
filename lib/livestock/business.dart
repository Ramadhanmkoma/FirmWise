import 'package:flutter/material.dart';

class LivestockBusiness extends StatelessWidget {
  final String animalName;
  LivestockBusiness({required this.animalName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Business - $animalName',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
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
              Text(
                'Introduction to $animalName Business',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Yak livestock farming can be a profitable business for farmers who are interested in raising livestock that is able to adapt to harsh climates and high altitudes. In this section, we will discuss some important aspects of Yak livestock farming that can help farmers maximize their profits and minimize risks.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Market Demand',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Yak meat is considered a delicacy in many countries, and it is in high demand due to its unique taste and nutritional value. Additionally, Yak wool is also used in the textile industry, and Yak milk is used in traditional medicine and cosmetics.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Breeding and Rearing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Yak livestock requires special attention to breeding and rearing to ensure high-quality meat, wool, and milk production. Yak breeding is a specialized field, and farmers must ensure that they are using only the best quality breeding stock.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Feed and Nutrition',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Yak livestock requires a diet that is high in protein and nutrients, which can be obtained through natural grazing or supplementation with specialized feeds. Farmers must ensure that their Yak livestock is getting the proper nutrition to maintain optimal health and production.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Health and Disease Management',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Like any livestock, Yak are susceptible to diseases and illnesses. Farmers must take preventative measures to ensure their livestock is healthy and protected against common diseases and illnesses. Farmers must also ensure that they are using the best quality vaccines and medications to prevent and treat diseases.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Marketing and Sales',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Yak livestock can be marketed and sold in various ways, such as through farmers\' markets, online platforms, or through direct sales to local restaurants and butchers. Farmers must develop a marketing and sales strategy that suits their individual needs and goals.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_rounded,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Setting',
          )
        ],
        // currentIndex: ,
        selectedItemColor: Colors.green[800],
        // onTap: ,
      ),
    );
  }
}
