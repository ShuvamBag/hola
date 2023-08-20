import 'package:flutter/material.dart';

import 'callpage.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calling APP',
      routes: {"login": (context) => MyLogin(), "home": (context) => MyHome(callid: MyLogin.meetingid,)},
      initialRoute: "login",
    );
  }
}