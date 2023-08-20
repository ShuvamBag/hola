import 'package:flutter/material.dart';
import 'package:hola/callpage.dart';
import 'package:hola/login.dart';
class MyHome extends StatelessWidget {
  String callid = MyLogin.meetingid;
   MyHome({Key? key,required this.callid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CallPage(callID: callid)));
          },
          child: Text("Join Call"),
        ),
      ),
    );
  }
}