import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user=TextEditingController();
  var password=TextEditingController();
  var confirmpassword=TextEditingController();
  void getData(){
    print(user.text);
    print(password.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("user login"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
          padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: user,
              decoration: InputDecoration(
                border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
              ),
                labelText: "user name", hintText: "enter your user name",
              ),
        ),
      ),
        Padding(
        padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: password,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "password", hintText: "enter your user password",
    ),
      obscureText: true,
    ),
    ),
        Padding(
        padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: confirmpassword,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "confirmpassword", hintText: "enter your user confirmpassword",
    ),
      obscureText: true,
    ),
    ),
    ElevatedButton(onPressed: () {
      getData();
    },child: Text("Login")),
    ],
    ),
    ),
    );
  }
}

