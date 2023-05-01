import 'package:fllearn/models/catelog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key, required this.catelog});
  final Item catelog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: context.theme.iconTheme.color),
      ),
      bottomNavigationBar: ButtonBar(
        buttonPadding: EdgeInsets.zero,
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catelog.price}".text.xl.extraBold.make(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
            ),
          ),
        ],
      ).wh(100, 50).px(32).py(16),
      backgroundColor: context.theme.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catelog.id.toString(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 32, left: 32),
                child: Image.asset(catelog.image),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      catelog.name.text.xl.bold.make(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: catelog.desc.text
                            .textStyle(context.captionStyle)
                            .make(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child:
                            "The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum"
                                .text
                                .textStyle(context.captionStyle)
                                .make(),
                      ),
                    ]),
              ).py16().px32(),
            )
          ],
        ),
      ),
    );
  }
}
