import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
          child: Column(
            children: [
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
