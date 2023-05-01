import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: context.theme.iconTheme.color),
        title: 'Cart'.text.color(context.textTheme.titleLarge?.color).make(),
      ),
      body: SafeArea(
        child: Column(
          children: [Text('Cart Page')],
        ),
      ),
    );
  }
}
