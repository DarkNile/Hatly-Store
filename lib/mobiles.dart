import 'package:flutter/material.dart';

class Mobiles extends StatefulWidget {
  @override
  _MobilesState createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {

  List images = ['1', '2', '3', '4', '5', '6', '7', '8'];

  List names = ['iPhone12', 'iPhone 12 Pro', 'OnePlus 8T 5G', 'Samsung Galaxy S20FE 5G', 'Xiaomi Mi 10T Pro 5G',
  'Asus ROG Phone 3 Classic', 'Asus ROG Phone 3 Global', 'Black Shark 3 Pro'];

  List prices = ['22,500', '31,000', '11,250', '12,300', '11,990', '13,990', '13,990', '15,800'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text('Hatly Store'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(names.length, (i) {
            return Card(
              elevation: 10,
              child: InkWell(
                splashColor: Colors.indigoAccent,
                onTap: (){},
                child: Column(
                  children: [
                    Image.asset('assets/${images[i]}.jpg', width: 100, height: 100),
                    SizedBox(
                      height: 5,
                    ),
                    Text('${names[i]}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        )),
                    SizedBox(
                        height: 1
                    ),
                    Text('${prices[i]} EGP',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo
                      ),
                      child: FlatButton(
                        onPressed: (){

                        },
                        child: Text('Select Options',
                            style: TextStyle(
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
      ),
    );
  }
}
