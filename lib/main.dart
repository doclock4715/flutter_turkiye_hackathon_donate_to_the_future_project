import 'package:flutter/material.dart';
import 'package:flutter_turkiye_hackathon/view/from_left_drawer/cantact_us.dart';
import 'package:flutter_turkiye_hackathon/view/home/home_donate.dart';
import 'view/from_left_drawer/activities.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeDonate(),
        '/activities': (context) => Activities(),
        '/areYouNeedy': (context) => ContactUs(),
      },
    );
  }
}
