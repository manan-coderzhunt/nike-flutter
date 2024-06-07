import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_nike/Pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
