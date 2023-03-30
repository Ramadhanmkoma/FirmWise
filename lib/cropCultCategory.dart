import 'package:firmwise/crops/aboutBusiness.dart';
import 'package:firmwise/mainCategory.dart';
import 'package:flutter/material.dart';

class SelectedCategory extends StatefulWidget {
  const SelectedCategory({super.key});

  @override
  State<SelectedCategory> createState() => _SelectedCategoryState();
}

class _SelectedCategoryState extends State<SelectedCategory> {
  List cropCat = [
    'Business',
    'Agricultural Education',
    'Good Food',
  ];

  List topics = [
    'About Business',
    'About agricultural education',
    'About good food',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crop Cultivation Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Farming'.toUpperCase(),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/0.jpg',
                  ),
                  backgroundColor: Colors.grey[300],
                ),
                title: Text(
                  'Crop Cultivation',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Learn more about crop cultivation',
                  style: TextStyle(
                      fontSize: 12, color: Theme.of(context).primaryColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              ListView.builder(
                itemCount: cropCat.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 0),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutBusiness()),
                        );
                      },
                      leading: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Text(
                          '$index',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      title: Text(
                        cropCat[index].toString().toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        topics[index],
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.location_on),
          color: Colors.amber[800],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.call),
          color: Colors.blue[800],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
          color: Colors.green[800],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.help, key: Key('help')),
          color: Colors.red[800],
        ),
      ],
    );
  }
}
