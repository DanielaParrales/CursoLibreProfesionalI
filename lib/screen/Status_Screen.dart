import 'package:flutter/material.dart';

class statusScreen extends StatefulWidget {
  @override
  statusScreenState createState() => new statusScreenState();
}

class statusScreenState extends State<statusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://ih1.redbubble.net/image.1881117909.6256/st,small,507x507-pad,600x600,f8f8f8.jpg"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "Mi estado",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Añade una actualización"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recientes",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://sarahmaker.com/wp-content/uploads/2020/07/SarahMaker-friendship-bracelets-2.jpg.webp"),
                    ),
                    title: Text(
                      "Amika",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("hace 33 minutos"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
