import 'package:first_flutter_app/pages/chooseLocation.dart';
import 'package:first_flutter_app/pages/home.dart';
import 'package:first_flutter_app/pages/loading.dart';
import 'package:flutter/material.dart';

void main()  => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    '/home': (context) => const Home(),
    '/location': (context) => const ChooseLocation()
  },
));
