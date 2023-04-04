import 'package:flutter/material.dart';

class BreedingMethod extends StatelessWidget {
  final String cropName;

  BreedingMethod({required this.cropName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$cropName - About Business'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introduction to $cropName Business',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at elit at elit placerat sagittis. Curabitur vulputate dui eu gravida aliquam. Duis tristique felis in facilisis luctus. Aliquam rutrum lacinia interdum. Morbi consectetur mi quis sapien scelerisque, vel rhoncus quam ultricies. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec in nibh velit. Mauris suscipit efficitur lacus, sed molestie ipsum ullamcorper eu. In semper eros in odio varius aliquam.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Market Analysis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at elit at elit placerat sagittis. Curabitur vulputate dui eu gravida aliquam. Duis tristique felis in facilisis luctus. Aliquam rutrum lacinia interdum. Morbi consectetur mi quis sapien scelerisque, vel rhoncus quam ultricies. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec in nibh velit. Mauris suscipit efficitur lacus, sed molestie ipsum ullamcorper eu. In semper eros in odio varius aliquam.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
