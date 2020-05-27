import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/home.dart';
import 'package:flutterapp/identifierPage.dart';
import 'package:flutterapp/labelerPage.dart';

import 'labelerPage.dart';


void main() => runApp(MaterialApp(
  title: 'What Is This App',
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/identifier': (context) => Identifier(),
    '/labeler': (context) => Labeler(),
  },
));


