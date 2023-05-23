import 'package:flutter/material.dart';
import 'package:job_tracker/pages/home.dart';
import 'package:job_tracker/pages/detailed_view.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => const Home(),
    '/detailed': (context) => const DetailedView(),
  }
));