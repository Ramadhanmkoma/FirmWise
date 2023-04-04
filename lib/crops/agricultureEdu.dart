import 'package:flutter/material.dart';

class CropEducationPage extends StatelessWidget {
  final String cropName;

  CropEducationPage({required this.cropName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Education'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Learn about ${cropName} cultivation',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium ullamcorper ante, ac mattis sapien. Nunc gravida auctor justo, vel laoreet felis rhoncus in. Integer sit amet eleifend velit. Curabitur fringilla nisl eget elit maximus suscipit. Donec posuere tortor in urna posuere aliquam. Donec a fringilla justo. Vivamus eget tellus eu tellus finibus bibendum eu ac justo. In dapibus nisi nunc, at faucibus odio hendrerit a. Aenean bibendum ex nec enim malesuada, quis rhoncus justo eleifend. Nam quis imperdiet arcu, sit amet pellentesque turpis.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Here are some resources to get started:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '- Video tutorial: https://www.youtube.com/watch?v=abc123\n\n- Online course: https://www.example.com/course\n\n- Local training center: ABC Training Center',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
