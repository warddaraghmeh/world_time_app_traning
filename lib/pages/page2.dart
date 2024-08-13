// ignore_for_file: prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,{"country":"Canada","currentTime":"05:30 Am"});
              },
              child: Text(
                "Return to page1 with info about Canada",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 184, 42, 87),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,{"country":"Palestine","currentTime":"04:30 Am"});

              },
              child: Text(
                "Return to page1 with info about Palestine",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 184, 42, 87),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
          ],
        ),
      ),
    );
  }
}
