

import 'package:flutter/material.dart';
import 'package:student/attendancemarkcheck.dart';
import 'package:student/create_an_account/classselection.dart';
import 'package:student/create_an_account/loginpage.dart';
import 'package:student/create_an_account/signup.dart';
import 'package:student/create_an_account/studentaccountfirstpage.dart';
import 'package:student/create_an_account/studentaccountsecondpage.dart';
import 'package:student/create_an_account/teacheraccountfirstpage.dart';
import 'package:student/create_an_account/teacheraccountsecondpage.dart';
import 'package:student/palette.dart';
import 'package:student/splashscreen.dart';


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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Palette.kToDark),
      home: const ScreenSplash(),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => const ScreenSplash(),
        'loginpage': (context) => const Loginpage(),
        'navigatingtosignup': (context) => const Signuppage(),
        'navigatingtoteacheraccountsignup': (context) =>
            const Teacheraccpage1(),
        'navigatingtostudentaccountsignup': (context) =>
            const Studentaccpage1(),
        'navigatingtoteacheraccountsignup2': (context) =>
            const Teacheraccpage2(),
        'navigatingtostudentaccountsignup2': (context) =>
            const Studentaccpage2(),
        'navigatingtoattendancemarkcheck': (context) =>
            const Attendancemarkcheck(),
        'navigatingtoclassselectionpage': (context) => const Classselection(),

        
      },
    );
  }
}
