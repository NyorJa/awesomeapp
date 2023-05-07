import 'dart:io';

import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/home.dart';
import 'package:awesomeapp/pages/choose_location.dart';
import 'package:awesomeapp/pages/loading.dart';


void main()  {
  HttpOverrides.global =  MyHttpOverrides();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

// void main() => runApp(MaterialApp(
//   initialRoute: '/',
//   routes: {
//     '/': (context) => Loading(),
//     '/home': (context) => Home(),
//     '/location': (context) => ChooseLocation(),
//   },
// ));


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host,
          int port) => true;
  }
}