
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:student/Resources/palette.dart';
import 'package:student/splashscreen/splashscreen.dart';
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
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const  Color.fromARGB(255, 161, 46, 46),
          )
        ),
        primarySwatch: Palette.kToDark,
      appBarTheme: const AppBarTheme(
        elevation: 10,
        color:    Color.fromARGB(255, 161, 46, 46),
        foregroundColor: Colors.white
      ),
      scaffoldBackgroundColor:  const Color.fromARGB(255, 234, 234, 234),),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) =>  const ScreenSplash()
      },
    );
  }
}
