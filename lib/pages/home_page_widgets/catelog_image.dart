import 'package:flutter/material.dart';

class CatelogImage extends StatelessWidget {
  const CatelogImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image);
  }
}
