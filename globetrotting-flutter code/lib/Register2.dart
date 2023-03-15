import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var Name = TextEditingController();
  var Emailid = TextEditingController();
  var ContactNumber = TextEditingController();
  void getData() {
    print(Name.text);
    print(Emailid.text);
    print(ContactNumber);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register your Account"),
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
                        labelText: "user name", hintText: "enter user name",
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: Emailid,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Email id", hintText: "enter your email id",
                    ),
                    keyboardType: TextInputType.number,
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
                      labelText: "Contact number", hintText: "enter your contact number",
                    ),
                    obscureText: true,
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>Login()),
                  );
                }, child: Text("SIGNUP")),
              ],
            ),
        ),
    );
  }
}


