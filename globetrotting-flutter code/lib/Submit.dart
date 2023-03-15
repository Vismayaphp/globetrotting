import 'package:flutter/material.dart';
import 'package:untitled1/Viewmore.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var Name = TextEditingController();
  var ContactNumber = TextEditingController();
  var NumberofTravellers = TextEditingController();
  var Destination = TextEditingController();
  var Category = TextEditingController();
  void getData() {
    print(Name.text);
    print(ContactNumber.text);
    print(NumberofTravellers);
    print(Destination);
    print(Category);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("Book your package"),
  centerTitle: true,
  ),
  body: Center(
  child: Column(
  children: [
  Padding(
  padding: const EdgeInsets.all(15.0),
  child: TextField(
  controller: Name,
  decoration: InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  labelText: "user name", hintText: "enter your name",
  ),
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(15.0),
  child: TextField(
  controller: ContactNumber,
  decoration: InputDecoration(
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  labelText: "ContactNumber", hintText: "enter your ContactNumber",
    ),
    obscureText: true,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: NumberofTravellers,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "Number of travellers", hintText: "enter number of travellers",
    ),
      obscureText: true,
    ),
    ),
        Padding(
        padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: Destination,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "Destination", hintText: "enter your destination",
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: Category,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "Category", hintText: "enter your category",
    ),
    ),
    ),
    ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewmore()),
      );
  },child: Text("Book Now")),
],
  )
  )
  );
}
}




