import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [Text("Watch")],
        ),
      ),
    );
  }
}
