import 'package:flutter/material.dart';

const kTextFieldDecor = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.black54,
  ),
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff7B8794), width: 0.5),
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
);
