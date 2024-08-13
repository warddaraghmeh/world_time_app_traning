// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Map time = {"country": "US", "currentTime": "10:30"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page1",
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, "/second");
                setState(() {
                  time = {
                    "country": result["country"],
                    "currentTime": result["currentTime"],
                  };
                });
              },
              child: Text(
                "Go to page 2",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 39, 123, 192)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(19),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11))),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(time["currentTime"],
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(time["country"],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
