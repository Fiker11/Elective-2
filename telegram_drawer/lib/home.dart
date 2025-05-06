import 'package:flutter/material.dart';
import 'package:telgram_drawer/menuList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("telegram drawer")
      ),
      drawer: TelegramDrawer(),
      body: SafeArea(child: Container()),
    );
  }
}