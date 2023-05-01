import 'package:fllearn/models/catelog.dart';
import 'package:fllearn/pages/home_detail_page.dart';
import 'package:fllearn/pages/home_page_widgets/catelog_item.dart';
import 'package:flutter/material.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.items.length,
        itemBuilder: (context, index) {
          final catelog = CatelogModel.items[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(catelog: catelog),
                ),
              );
            },
            child: CatelogItem(catelog: catelog),
          );
        });
  }
}
