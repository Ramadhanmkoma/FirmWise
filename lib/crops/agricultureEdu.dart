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
              'Coconut is a versatile crop with many uses, and proper education is important for successful cultivation. In this subcategory, you will find educational resources on all aspects of coconut farming, including planting techniques, soil preparation, fertilization, pest management, and harvesting methods. You\'ll also find information on how to identify and manage common diseases and pests that affect coconut crops, as well as tips for increasing yield and improving the quality of your harvest. Whether you\'re a beginner or an experienced farmer, the educational resources in this subcategory will help you improve your knowledge and skills in coconut cultivation.',
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
