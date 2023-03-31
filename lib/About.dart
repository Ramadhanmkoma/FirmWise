import 'package:firmwise/Setting.dart';
import 'package:flutter/material.dart';

import 'mainCategory.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/algae.jpg'),
            ),
          ),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Farmer',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce faucibus mauris lectus, eget ullamcorper magna pretium eu. Mauris non ex non quam congue aliquam at quis enim. Nulla pellentesque malesuada felis, quis maximus quam blandit vitae. Nam commodo consequat dui, in iaculis elit bibendum at. Sed volutpat sollicitudin magna, eu efficitur turpis auctor eget. Aliquam lobortis efficitur dolor vitae imperdiet. Sed vel quam dolor. Praesent eu ipsum eget velit malesuada commodo. Integer non commodo libero. ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.green,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_rounded,
                // color: Colors.white,
              ),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Setting',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          onTap: (index) {
            if (index == 0) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                _selectedIndex = 0;
                return MainDashboard();
              }));
            } else if (index == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                _selectedIndex = 1;
                return AboutPage();
              }));
            } else if (index == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                _selectedIndex = 2;
                return SettingsPage();
              }));
            }
          }),
    );
  }
}
