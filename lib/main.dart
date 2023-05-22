import 'package:flutter/material.dart';
import 'package:job_tracker/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Loading(),
    // '/home': (context) => const Home(),
  }
));