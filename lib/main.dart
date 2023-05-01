
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:student/Resources/palette.dart';
import 'package:student/Teacher/attendance.dart';
import 'package:student/create_an_account/loginpage.dart';
import 'Resources/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Palette.kToDark,
      scaffoldBackgroundColor:  const Color.fromARGB(255, 234, 234, 234),),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) =>   const Loginpage(),
      },
    );
  }
}
