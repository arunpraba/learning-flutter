import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogHeader extends StatelessWidget {
  const CatelogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Shoes".text.xl4.bold.make(),
        "Trending Products".text.medium.make(),
      ],
    );
  }
}
