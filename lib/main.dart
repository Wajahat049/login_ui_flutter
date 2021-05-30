import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text("Login page",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))),
        ),
      ),
      body: Container(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          height: 800,
          width: 1500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/gradient-colors.png'),
                  fit: BoxFit.fill)),

          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 80),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: Colors.white10,
                          hintText: "Enter you Email",
                          prefixIcon: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: Colors.white10,
                          hintText: "Enter you Password",
                          prefixIcon: Icon(Icons.lock)),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forget you Password",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: ElevatedButton(
                        onPressed: () {},
                        // color:Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
