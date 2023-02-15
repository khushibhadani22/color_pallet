import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List c1 = [
    Colors.pink.shade100,
    Colors.pink.shade200,
    Colors.pink.shade400,
    Colors.pink.shade600,
    Colors.pink.shade800,
    Colors.pink.shade900,
  ];
  List c2 = [
    Colors.indigo.shade100,
    Colors.indigo.shade200,
    Colors.indigo.shade400,
    Colors.indigo.shade600,
    Colors.indigo.shade800,
    Colors.indigo.shade900,
  ];
  List c3 = [
    Colors.green.shade100,
    Colors.green.shade200,
    Colors.green.shade400,
    Colors.green.shade600,
    Colors.green.shade800,
    Colors.green.shade900,
  ];
  List c4 = [
    Colors.yellow.shade100,
    Colors.yellow.shade200,
    Colors.yellow.shade400,
    Colors.yellow.shade600,
    Colors.yellow.shade800,
    Colors.yellow.shade900,
  ];
  List c5 = [
    Colors.purple.shade100,
    Colors.purple.shade200,
    Colors.purple.shade400,
    Colors.purple.shade600,
    Colors.purple.shade800,
    Colors.purple.shade900,
  ];
  List c6 = [
    Colors.teal.shade100,
    Colors.teal.shade200,
    Colors.teal.shade400,
    Colors.teal.shade600,
    Colors.teal.shade800,
    Colors.teal.shade900,
  ];
  @override
  Widget build(BuildContext context) {
    Random r1 = Random();
    int n1 = r1.nextInt(6);
    int n2 = r1.nextInt(6);
    int n3 = r1.nextInt(6);
    int n4 = r1.nextInt(6);
    int n5 = r1.nextInt(6);
    int n6 = r1.nextInt(6);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 600,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffD9E8F9),
              Color(0xffD8E6F4),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Color Pallet",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Generate",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
                height: 304,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent, width: 2)),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: c1[n1],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(13),
                            topRight: Radius.circular(13)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: c2[n2],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: c3[n3],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: c4[n4],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: c5[n5],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: c6[n6],
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13)),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blueAccent, width: 2)),
                  alignment: Alignment.center,
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
