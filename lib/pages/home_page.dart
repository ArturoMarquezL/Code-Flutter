import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Incremento y Decremento")),
      body: Center(
        child: Text(
          "$_contador",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
          textScaleFactor: 2.5,
          maxLines: 3,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        )),
      floatingActionButton: Row(
        children : [
          SizedBox(
            height: 150,
            width: 150,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _contador+=2;
                print("Contador $_contador");
              });
            },
            ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _contador-=3;
                print("Contador $_contador");
              });
            },
          ),
        ],
      ),
      );
  }
}
