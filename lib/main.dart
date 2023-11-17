
import 'package:flutter/material.dart';
import 'package:port/home.dart';
import 'package:port/projects.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => MyHome(),
      'about' : (context) => MyAbout(),
      'projects' : (context) => MyProjects()
    },
  ));
}
