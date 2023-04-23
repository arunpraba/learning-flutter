import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String hello = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catelog App'),
      ),
      body: const Center(
        child: Text("Welcome Hello World !"),
      ),
      drawer: const Drawer(),
    );
  }
}
