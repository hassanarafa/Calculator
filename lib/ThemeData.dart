import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightmode = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.blue, fontSize: 20)));

ThemeData darkmode = ThemeData(
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
    scaffoldBackgroundColor: Colors.grey[600],
    appBarTheme: AppBarTheme(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.grey[600]),
        backgroundColor: Colors.grey[600],
        titleTextStyle: TextStyle(color: Colors.blue, fontSize: 20)));
