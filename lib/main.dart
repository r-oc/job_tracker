import 'package:flutter/material.dart';
import 'package:job_tracker/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => const Home(),
  }
));