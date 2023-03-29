import 'package:firmwise/cropCultCategory.dart';
import 'package:firmwise/liveStockCategory.dart';
import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  List categories = [
    'Crop Cultivation',
    'Livestock Farming',
  ];

  List categoriesDesc = [
    'Business, Agriculture education, Good food',
    'Business, Breeding method, Fertilizer',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () => {
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return List.generate(2, (index) {
                    return const CheckedPopupMenuItem();
                  });
                },
              )
            },
            child: Container(
              margin: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/algae.jpg'),
                backgroundColor: Colors.grey[300],
              ),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return List.generate(1, (index) {
                return PopupMenuItem(
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.redAccent[800]),
                  ),
                  onTap: () => Navigator.popUntil(context, (route) => false),
                );
              });
            },
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 0),
                            blurRadius: 5,
                          ),
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectedCategory(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LiveStockCategory(),
                                ),
                              );
                            }
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/$index.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 200,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      categories[index]
                                          .toString()
                                          .toUpperCase(),
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Text(
                                      categoriesDesc[index].toString(),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey[300],
                                      height: 25,
                                    ),
                                    // Row(
                                    //   children: <Widget>[
                                    //     Expanded(
                                    //       child: Container(
                                    //         margin: EdgeInsets.only(right: 10),
                                    //         child: LinearPercentIndicator(
                                    //           animation: true,
                                    //           lineHeight: 5.0,
                                    //           animationDuration: 2500,
                                    //           percent: 0.5,
                                    //           backgroundColor: Colors.grey[200],
                                    //           linearStrokeCap:
                                    //               LinearStrokeCap.roundAll,
                                    //           progressColor: Theme.of(context)
                                    //               .primaryColor,
                                    //         ),
                                    //       ),
                                    //     )
                                    //   ],
                                    // )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
