import 'package:fllearn/pages/home_page_widgets/body_widget.dart';
import 'package:fllearn/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.cartRoute);
        },
        backgroundColor:
            context.theme.floatingActionButtonTheme.backgroundColor,
        child: Icon(Icons.shopping_cart),
      ),
      body: BodyWidget(),
    );
  }
}
