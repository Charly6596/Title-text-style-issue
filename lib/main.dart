import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool backwardsCompatibility = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Text("Hello"),
          titleTextStyle: TextStyle(color: Colors.red),
          toolbarTextStyle: TextStyle(color: Colors.red),
          backwardsCompatibility: backwardsCompatibility,
          title: Text("This text should be red"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Current value: $backwardsCompatibility"),
            onPressed: () => {
              setState(() {
                backwardsCompatibility = !backwardsCompatibility;
              })
            },
          ),
        ),
      ),
    );
  }
}
