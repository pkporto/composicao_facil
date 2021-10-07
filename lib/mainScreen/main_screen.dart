import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[600],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
