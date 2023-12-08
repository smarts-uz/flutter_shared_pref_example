// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

Future getDataFromPref() async {
  // Add your function code here!

  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? data = prefs.getInt('data');
  String? json = prefs.getString('json');

  FFAppState().update(() {
    FFAppState().dataString = data.toString();
    FFAppState().dataJSON = jsonEncode(json);
  });
}
