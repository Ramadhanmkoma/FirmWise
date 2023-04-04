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
              Image.asset('assets/crop-images/3.jpeg'),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium ullamcorper ante, ac mattis sapien. Nunc gravida auctor justo, vel laoreet felis rhoncus in. Integer sit amet eleifend velit. Curabitur fringilla nisl eget elit maximus suscipit. Donec posuere tortor in urna posuere aliquam. Donec a fringilla justo. Vivamus eget tellus eu tellus finibus bibendum eu ac justo. In dapibus nisi nunc, at faucibus odio hendrerit a. Aenean bibendum ex nec enim malesuada, quis rhoncus justo eleifend. Nam quis imperdiet arcu, sit amet pellentesque turpis.',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
