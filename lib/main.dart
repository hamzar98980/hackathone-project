import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store/Screen/home.dart';
import 'package:store/Screen/register.dart';
import 'package:store/Screen/splash_screen.dart';
import 'package:store/Screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SPlash(),
    );
  }
}
