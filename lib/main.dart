import 'package:flutter/material.dart';
import 'package:photography_app/pages/contact_message.dart';
import 'package:photography_app/pages/example.dart';
import 'package:photography_app/pages/home_page.dart';
import 'package:photography_app/pages/message_page.dart';
import 'package:photography_app/pages/single_profile_page.dart';

void main() {
  runApp(
    new MaterialApp(
      // initialRoute: '',
      // routes: {
      //   '': (context) => Home(),
      //   'message': (context) => MessagePage(),
      //   'single_profile': (context) => SingleProfile(),
      //   'contact_message': (context) => ContactMessages(),
      // },
      debugShowCheckedModeBanner: false,
      home: new Example(),
    ),
  );
}
