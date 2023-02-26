import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../components/RoundedButton.dart';
import '../components/RoundedContinueButton.dart';
import '../constants.dart';
import 'mainScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String id = 'signupScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final List<String> countries = [
    'Sweden',
    'Russia',
    'Egypt',
    'USA',
    'India',
    'Japan',
    'Australia'
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        child: const Icon(
                          Icons.close,
                          size: 30.0,
                          color: Color(0xff7B8794),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        // fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Color(0xff323F4B),
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text(
                      'Enter your phone number to sign up',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff323F4B),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    const Text(
                      'COUNTRY',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                'Sweden',
                                style: TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                  color: Color(0xff2F80ED),
                                ),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                        items: countries
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                      color: Color(0xff2F80ED),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                        iconSize: 30,
                        iconEnabledColor: const Color(0xff2F80ED),
                        iconDisabledColor: const Color(0xff2F80ED),
                        buttonHeight: 50,
                        buttonWidth: 160,
                        buttonPadding:
                            const EdgeInsets.only(left: 14, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xff2F80ED),
                          ),
                          color: Colors.white,
                        ),
                        itemHeight: 40,
                        dropdownMaxHeight: 200,
                        dropdownWidth: 300,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        // dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 6,
                        scrollbarAlwaysShow: true,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'LABEL',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    TextField(
                      decoration: kTextFieldDecor.copyWith(
                          hintText: 'Entry',
                          hintStyle: const TextStyle(
                            color: Color(0xff7B8794),
                          )),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Flexible(
                      child: RoundedButton(
                        title: 'CONTINUE',
                        colour: const Color(0xff2F80ED),
                        onPressed: () =>
                            Navigator.pushNamed(context, MainScreen.id),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Flexible(
                      child: Row(
                        children: const [
                          Expanded(
                              child: Divider(
                            color: Color(0xff7B8794),
                          )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'or',
                              style: TextStyle(
                                color: Color(0xff616E7C),
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: Color(0xff7B8794))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Flexible(
                      child: RoundedContinueButton(
                        title: 'CONTINUE WITH FACEBOOK',
                        colour: Colors.white,
                        onPressed: () =>
                            Navigator.pushNamed(context, MainScreen.id),
                        icon: Image.asset(
                          'images/fbButton.png',
                          fit: BoxFit.contain,
                          width: 23.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: RoundedContinueButton(
                        title: 'CONTINUE WITH TWITTER',
                        colour: Colors.white,
                        onPressed: () =>
                            Navigator.pushNamed(context, MainScreen.id),
                        icon: Image.asset(
                          'images/twitterButton.png',
                          fit: BoxFit.contain,
                          width: 23.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
