import 'package:fllearn/models/catelog.dart';
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemCount: CatelogModel.items.length,
      itemBuilder: (context, index) {
        final item = CatelogModel.items[index];
        return Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: GridTile(
                header: Container(
                    padding: EdgeInsets.all(8),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                    child: Text(
                      item.name,
                      style: TextStyle(color: Colors.white),
                    )),
                footer: Container(
                    padding: EdgeInsets.all(8),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                    child: Text(
                      item.price.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                child: Image.asset(
                  item.image,
                  height: 50,
                  fit: BoxFit.cover,
                )));
      },
    );
  }
}
