import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  theme: ThemeData(
    primarySwatch: Colors.purple,
  ),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String url = "https://eventgo.se/app/polarindex";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: WebviewScaffold(
        url: url,
        withZoom: true,

      ),
    );
  }
}