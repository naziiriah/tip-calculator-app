// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tipPercent = 0;
  double bill = 0;
  double tipPerPerson = 0;
  double totalPerPerson = 0;
  int numberOfPeople = 0;

  calculateTips() {
    if (bill > 0 && tipPercent > 0 && numberOfPeople > 0) {
      tipPerPerson = double.parse(
          (bill * (tipPercent / 100) / numberOfPeople).toStringAsFixed(2));
      totalPerPerson = double.parse(
          (tipPerPerson + (bill / numberOfPeople)).toStringAsFixed(2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(197, 228, 231, 1),
      body: SingleChildScrollView(
        child: SafeArea(
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
            Container(
              height: 850,
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
                        hintTextDirection: TextDirection.rtl),
                    textDirection: TextDirection.rtl,
                    onChanged: (value) {
                      if (value == "") {
                        print("empty");
                      } else {
                        setState(() {
                          bill = double.parse(value);
                        });
                      }
                      ;
                    },
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                tipPercent = 5;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: tipPercent == 5
                                  ? Color.fromARGB(255, 38, 192, 171)
                                  : Color.fromARGB(255, 0, 73, 77),
                            ),
                            child: Text("5%",
                                style: TextStyle(
                                    fontFamily: "Space Mono",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24))),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                tipPercent = 10;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: tipPercent == 10
                                  ? Color.fromARGB(255, 38, 192, 171)
                                  : Color.fromARGB(255, 0, 73, 77),
                            ),
                            child: Text("10%",
                                style: TextStyle(
                                    fontFamily: "Space Mono",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24))),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                tipPercent = 15;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: tipPercent == 15
                                  ? Color.fromARGB(255, 38, 192, 171)
                                  : Color.fromARGB(255, 0, 73, 77),
                            ),
                            child: Text("15%",
                                style: TextStyle(
                                    fontFamily: "Space Mono",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24))),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                tipPercent = 25;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: tipPercent == 25
                                  ? Color.fromARGB(255, 38, 192, 171)
                                  : Color.fromARGB(255, 0, 73, 77),
                            ),
                            child: Text(
                              "25%",
                              style: TextStyle(
                                  fontFamily: "Space Mono",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                tipPercent = 50;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: tipPercent == 50
                                  ? Color.fromARGB(255, 38, 192, 171)
                                  : Color.fromARGB(255, 0, 73, 77),
                            ),
                            child: Text(
                              "50%",
                              style: TextStyle(
                                  fontFamily: "Space Mono",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(244, 250, 250, 1),
                              prefixIcon: Icon(Icons.money),
                              prefixIconColor: Color.fromRGBO(0, 73, 77, 1),
                              hintText: 'Custom',
                              hintTextDirection: TextDirection.rtl),
                          textDirection: TextDirection.rtl,
                          onChanged: (value) {
                            setState(() {
                              tipPercent = int.parse(value);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Number of People",
                    style: TextStyle(
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
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromRGBO(0, 73, 77, 1),
                        hintText: '0',
                        hintTextDirection: TextDirection.rtl),
                    textDirection: TextDirection.rtl,
                    onChanged: (value) {
                      setState(() {
                        if (value != "") {
                          numberOfPeople = int.parse(value);
                        }
                      });
                      calculateTips();
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 250,
                      width: 400,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 73, 77),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Tip Amount ",
                                    style: TextStyle(
                                        fontFamily: "Space Mono",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    "/ person",
                                    style: TextStyle(
                                        fontFamily: "Space Mono",
                                        color:
                                            Color.fromARGB(100, 255, 255, 255),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              Text(
                                "$tipPerPerson",
                                style: TextStyle(
                                    fontFamily: "Space Mono",
                                    color: Color.fromARGB(255, 38, 192, 171),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        fontFamily: "Space Mono",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    "/ person",
                                    style: TextStyle(
                                        fontFamily: "Space Mono",
                                        color:
                                            Color.fromARGB(100, 255, 255, 255),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              Text(
                                "$totalPerPerson",
                                style: TextStyle(
                                    fontFamily: "Space Mono",
                                    color: Color.fromARGB(255, 38, 192, 171),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
