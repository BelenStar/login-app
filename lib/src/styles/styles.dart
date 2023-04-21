import 'package:flutter/material.dart';

abstract class ThemeStyle {
  static const InputDecoration emailFormField = InputDecoration(
    //labelText: 'Email',
    //floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
    hintText: 'Email',
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 77, 77, 77)),
      borderRadius: BorderRadius.all(Radius.circular(15.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 161, 52, 229)),
      borderRadius: BorderRadius.all(Radius.circular(15.5)),
    ),
    filled: true,
    fillColor: Color.fromARGB(255, 232, 232, 235),
  );

  static const InputDecoration passwordFormField = InputDecoration(
      //labelText: 'Password',
      //  floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
      hintText: 'Password',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 77, 77, 77)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 161, 52, 229)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      filled: true,
      fillColor: Color.fromARGB(255, 232, 232, 235));

  static const InputDecoration passwordConfirmationFormField = InputDecoration(
      //labelText: 'Password',
      //  floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
      hintText: 'Confirm Password',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 77, 77, 77)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 161, 52, 229)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      filled: true,
      fillColor: Color.fromARGB(255, 232, 232, 235));
}
