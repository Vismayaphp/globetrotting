import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Submit.dart';

class Viewmore extends StatefulWidget {
  const Viewmore({Key? key}) : super(key: key);

  @override
  State<Viewmore> createState() => _ViewmoreState();
}
class _ViewmoreState extends State<Viewmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         ListTile(
            title: Text("Rooms"),
      ),
         ListTile(
            title: Text("Sightseeing"),
        ),
         ListTile(
            title: Text("Meals"),
        ),
         ListTile(
            title: Text("Transportation"),
        ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()),
            );
          }, child: Text("Book Now")),
    ],
      ),
      );
  }
}







