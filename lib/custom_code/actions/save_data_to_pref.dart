// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

Future saveDataToPref() async {
  // Add your function code here!

  SharedPreferences prefs = await SharedPreferences.getInstance();

  FFAppState().update(() {
    FFAppState().status = "loading";
  });

  int number = Random().nextInt(90000) + 10000;

  Map<String, String> map = {
    "title": "Hello World",
    "index": "$number",
  };

  prefs.setInt("data", number);
  prefs.setString("json", jsonEncode(map.toString()));

  await Future.delayed(const Duration(seconds: 1));

  FFAppState().update(() {
    FFAppState().status = "loaded";
  });
}
