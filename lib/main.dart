import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/home.dart';
import 'package:awesomeapp/pages/choose_location.dart';
import 'package:awesomeapp/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
