import 'package:fllearn/models/catelog.dart';
import 'package:fllearn/pages/home_page_widgets/catelog_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogItem extends StatelessWidget {
  const CatelogItem({super.key, required this.catelog});
  final Item catelog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Hero(
                tag: Key(
                  catelog.id.toString(),
                ),
                child: CatelogImage(
                  image: catelog.image,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    catelog.name.text.lg.make(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: catelog.desc.text
                          .textStyle(context.captionStyle)
                          .maxLines(2)
                          .make(),
                    ),
                  ],
                ),
                ButtonBar(
                  buttonPadding: EdgeInsets.zero,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catelog.price}".text.lg.make(),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_shopping_cart,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ).p16(),
    ).color(context.cardColor).square(150).roundedSM.make().py16();
  }
}
