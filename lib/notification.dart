import 'package:flutter/material.dart';

class ThongBao extends StatelessWidget {
  const ThongBao ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [Text("Notification")],
        ),
      ),
    );
  }
}
