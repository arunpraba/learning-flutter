import 'package:fllearn/widgets/body_widget.dart';
import 'package:fllearn/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoes app'),
      ),
      body: BodyWidget(),
      drawer: const AppDrawer(),
    );
  }
}
