// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tipPercent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(197, 228, 231, 1),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 100,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 135),
            child: Text(
              "SPLITTER",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color.fromRGBO(0, 73, 77, 1),
                  fontSize: 30,
                  height: 1.3,
                  fontFamily: "Space Mono",
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Bill",
                    style: TextStyle(
                      height: 2,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(94, 122, 125, 1),
                      fontFamily: "Space Mono",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(244, 250, 250, 1),
                      prefixIcon: Icon(Icons.money),
                      prefixIconColor: Color.fromRGBO(0, 73, 77, 1),
                      hintText: '0',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Select Tip %",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(94, 122, 125, 1),
                      fontFamily: "Space Mono",
                      wordSpacing: 2,
                      letterSpacing: 0.4,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
