import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mitch/authen/login_or_registration.dart';
import 'package:mitch/firebase_options.dart';
import 'package:mitch/pages/register_page.dart';
import 'authen/auth.dart';
import 'pages/login_page.dart';

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
    return const  MaterialApp (
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
    return const Placeholder();
  }
}

