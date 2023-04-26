import 'package:fllearn/models/catelog.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';

class ItemsListWidget extends StatelessWidget {
  const ItemsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatelogModel.items.length,
        itemBuilder: (context, index) => ItemWidget(
              item: CatelogModel.items[index],
            ));
  }
}
