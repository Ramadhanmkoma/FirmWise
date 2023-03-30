import 'package:flutter/material.dart';

class Fertilizer extends StatelessWidget {
  const Fertilizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Getting Fertilizer',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
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
          padding: EdgeInsets.all(5),
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
