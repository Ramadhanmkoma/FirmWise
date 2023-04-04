import 'package:firmwise/cropCultCategory.dart';
import 'package:flutter/material.dart';

class CropView extends StatefulWidget {
  const CropView({super.key});

  @override
  State<CropView> createState() => _CropViewState();
}

class _CropViewState extends State<CropView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Crops'),
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          padding: EdgeInsets.all(16),
          childAspectRatio: 0.8, // adjust as needed
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SelectedCategory()),
                  ),
                );
              },
              child: _buildListItem('assets/crop-images/1.jpg', 'Coconut'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SelectedCategory()),
                  ),
                );
              },
              child: _buildListItem('assets/crop-images/5.jpeg', 'Flower'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SelectedCategory()),
                  ),
                );
              },
              child: _buildListItem('assets/crop-images/6.jpeg', 'Karafuu'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SelectedCategory()),
                  ),
                );
              },
              child: _buildListItem('assets/crop-images/4.jpeg', 'Casava'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String image, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
