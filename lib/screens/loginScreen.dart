import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iot_lab_recruitment_ui/screens/signUpScreen.dart';

import '../components/RoundedButton.dart';
import '../constants.dart';
import 'mainScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Flexible(
                  child: SizedBox(
                    height: 184.0,
                    child: Image.asset(
                      "images/illustratrion_globalwarming.png",
                      fit: BoxFit.contain,
                      width: 184.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 54.0,
                ),
                const Text(
                  'EMAIL',
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      fontSize: 12.0,
                      letterSpacing: 1.8),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                TextField(
                  onChanged: (value) => email = value,
                  decoration: kTextFieldDecor.copyWith(
                    hintStyle: const TextStyle(color: Color(0xff7b8794)),
                    hintText: 'name@email.com',
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'PASSWORD',
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      fontSize: 12.0,
                      letterSpacing: 1.8),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                TextField(
                  onChanged: (value) => password = value,
                  decoration: kTextFieldDecor.copyWith(
                    hintText: '*********',
                    hintStyle: const TextStyle(color: Color(0xff7B8794)),
                    prefixIcon: const Icon(Icons.lock_outline_sharp),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                    title: 'LOGIN',
                    colour: const Color(0xff2F80ED),
                    onPressed: () {
                      if (password == 'admin' && email == 'admin@email.com') {
                        Navigator.pushNamed(context, MainScreen.id);
                      } else {
                        Fluttertoast.showToast(
                          msg: 'Invalid email or password',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      }
                    }),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: Color(0xff7B8794),
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(
                          color: Color(0xff2F80ED),
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              Navigator.pushNamed(context, SignUpScreen.id),
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
