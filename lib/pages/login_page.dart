// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_practice/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool istap = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontStyle: GoogleFonts.lato().fontStyle),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          istap = true;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: istap ? 60 : 120,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.lato().fontFamily,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            shape: istap?BoxShape.circle:BoxShape.rectangle
                      //       borderRadius:
                      //           BorderRadius.circular(istap ? 20 : 8)),
                      // ),
                    )
                    // ElevatedButton(
                    //     child: Text("LOGIN"),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeroute);
                    //     },
                    //     style: TextButton.styleFrom(minimumSize: Size(120, 40)))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
