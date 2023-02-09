import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  TextEditingController l = TextEditingController();
  int leng = 0;
  List otp = [""];
  int? r;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  height: 60,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "OTP ",
                    style: TextStyle(fontSize: 50, color: Colors.green),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      controller: l,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.black,
                              )),
                          hintText: "Enter OTP Length",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 4,
                                color: Colors.black,
                              )))),
                ),
                InkWell(
                  onTap: () {
                    String le = l.text;
                    leng = int.parse(le);
                    var rnd = Random();
                    setState(() {
                      otp.clear();
                      for (int i = 0; i < leng; i++) {
                        r = rnd.nextInt(9);
                        otp.add(r);
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 100, right: 100),
                    height: 60,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "Generate OTP",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Colors.black,
                          Colors.green,
                          Colors.black,
                        ])),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.black,
                        Colors.green,
                        Colors.black,
                      ])),
                  alignment: Alignment.center,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: otp.map((e) => Text(
                      "$e",
                      style: TextStyle(fontSize: 30),
                    ),).toList()
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      l.text = "";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.green,
                          Colors.black,
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Reset",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}