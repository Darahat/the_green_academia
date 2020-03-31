import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingDemo extends StatefulWidget {
  FirebaseMessagingDemo({Key key}) : super(key: key);
  final String title ="Firebase messaging Demo";
  @override
  _FirebaseMessagingDemoState createState() => _FirebaseMessagingDemoState();
}

class _FirebaseMessagingDemoState extends State<FirebaseMessagingDemo> {
  final FirebaseMessaging _firebaseMessaging= FirebaseMessaging();
  _getToken(){
    _firebaseMessaging.getToken().then((deviceToken){
      print("Device Token: $deviceToken");
    });
  }
  @override
  void initState(){
    super.initState();
    _getToken();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}