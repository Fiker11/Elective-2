import 'package:flutter/material.dart';

class TelegramFeatures extends StatelessWidget {
  const TelegramFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('telegram feactures')),
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