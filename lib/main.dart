import 'package:flutter/material.dart';
import 'package:iot_lab_recruitment_ui/screens/loginScreen.dart';
import 'package:iot_lab_recruitment_ui/screens/mainScreen.dart';
import 'package:iot_lab_recruitment_ui/screens/signUpScreen.dart';

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
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        MainScreen.id: (context) => const MainScreen(),
      },
    );
  }
}
