import 'package:flutter/material.dart';

class CropAboutBusinessPage extends StatelessWidget {
  final String cropName;

  CropAboutBusinessPage({required this.cropName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$cropName - About Business',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              'Coconut crops are an important source of income for farmers in many regions of the world. The coconut tree is known for its versatility and can be used for a variety of purposes, from food and drink to building materials and fuel.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Market Analysis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'The demand for coconut products is on the rise, as consumers become more health-conscious and interested in natural and sustainable products. Coconut oil, coconut water, and coconut-based snacks are just a few examples of the growing market for coconut products.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Profitability',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Growing coconut crops can be profitable, but it requires careful planning and management. Factors such as climate, soil conditions, and pest control can all affect the yield and quality of the crop. However, with the right knowledge and resources, coconut farming can be a lucrative business opportunity.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Marketing Strategies',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Marketing coconut products can be challenging, especially for small-scale farmers who may not have access to large distribution channels. However, there are many strategies that can be used to reach consumers directly, such as online marketplaces, social media, and local farmers markets.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
