import 'package:flutter/material.dart';
import 'mobiles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text('Hatly Store'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Center(
                    child: Text('Browse Categories')
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.smartphone),
              title: Text('Mobiles'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mobiles()));
              },
            )
          ],
        ),
      ),
    );
  }
}
