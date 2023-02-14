// ignore_for_file: unused_element

import 'dart:math';
import 'package:math_expressions/math_expressions.dart';

import 'package:calculator_application/compunent/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Sreen extends StatefulWidget {
  Home_Sreen({
    super.key,
  });

  @override
  State<Home_Sreen> createState() => _Home_SreenState();
}

class _Home_SreenState extends State<Home_Sreen> {
  var userInput = "";
  var answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      answer.toString(),
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Button_Icon(
                        title: "AC",
                        onpased: () {
                          userInput = "";
                          answer = "";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "+/-",
                        onpased: () {
                          userInput += "+/-";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "%",
                        onpased: () {
                          userInput += "%";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "/",
                        onpased: () {
                          userInput += "/";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button_Icon(
                        title: "7",
                        onpased: () {
                          userInput += "7";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "8",
                        onpased: () {
                          userInput += "8";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "0",
                        onpased: () {
                          userInput += "0";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "x",
                        onpased: () {
                          userInput += "x";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button_Icon(
                        title: "4",
                        onpased: () {
                          userInput += "4";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "5",
                        onpased: () {
                          userInput += "5";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "6",
                        onpased: () {
                          userInput += "6";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "+",
                        onpased: () {
                          userInput += "+";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button_Icon(
                        title: "1",
                        onpased: () {
                          userInput += "1";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "2",
                        onpased: () {
                          userInput += "2";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "3",
                        onpased: () {
                          userInput += "3";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "*",
                        onpased: () {
                          userInput += "*";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button_Icon(
                        title: "0",
                        onpased: () {
                          userInput += "0";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: ".",
                        onpased: () {
                          userInput += ".";
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "DEL",
                        onpased: () {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                          setState(() {});
                        },
                      ),
                      Button_Icon(
                        title: "=",
                        onpased: () {
                          equalPress();

                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void equalPress() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
