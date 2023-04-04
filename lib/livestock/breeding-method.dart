import 'package:flutter/material.dart';

class BreedingMethod extends StatelessWidget {
  final String animalName;

  BreedingMethod({required this.animalName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$animalName - Breeding Methods'),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introduction to $animalName Breeding Methods',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Breeding methods for Yak livestock involve both natural and artificial insemination. Artificial insemination is used to improve the genetic quality of the herd by introducing desirable traits, such as increased milk production or disease resistance. It also allows for the use of high-quality breeding stock from other herds. Natural breeding is still commonly used, especially in traditional herding communities. Breeding practices may vary depending on the specific needs and goals of the herd, and may involve selective breeding, crossbreeding, or other techniques. Proper care and management of breeding animals is essential to ensure healthy offspring and maintain the genetic diversity of the herd.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
