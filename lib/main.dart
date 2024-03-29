// ignore_for_file: unused_import
import 'dart:io';
import 'package:attendence_tracker/new%20ap/course_screen.dart';
import 'package:attendence_tracker/new%20ap/help_centre.dart';
import 'package:attendence_tracker/new%20ap/login%20.dart';
import 'package:attendence_tracker/new%20ap/profile_screen.dart';
import 'package:attendence_tracker/new%20ap/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() async {
  runApp(const MyApp());
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    if (Platform.isAndroid) {}
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // The useMaterial3 property is not available in ThemeData
          // If you're using the latest Flutter version, it's not necessary.
          ),
      home: SplashScreen(),
    );
  }
}
