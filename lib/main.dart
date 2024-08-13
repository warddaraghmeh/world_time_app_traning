import 'package:flutter/material.dart';
import 'package:world_time_app/pages/page2.dart';

import 'pages/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: "/",
      routes: {
        "/": (context) => const Page1(),
        "/second": (context) => const Page2(),
      },
    );
  }
}
