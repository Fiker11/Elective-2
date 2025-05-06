import 'package:flutter/material.dart';

class ChangeAccount extends StatelessWidget {
  const ChangeAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Account'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to Home'),
        ),
      ),
    );
  }
}
