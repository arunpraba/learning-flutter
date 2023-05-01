import 'dart:convert';
import 'package:fllearn/models/catelog.dart';
import 'package:fllearn/pages/home_page_widgets/catelog_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fllearn/pages/home_page_widgets/catelog_header.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catelogJson =
        await rootBundle.loadString('assets/files/catelog.json');
    final decodedData = jsonDecode(catelogJson);
    final productsData = decodedData['products'];
    CatelogModel.items = List.from(productsData)
        .map<Item>(
          (item) => Item.fromMap(item),
        )
        .toList();
    await Future.delayed(
      Duration(seconds: 2),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: Vx.m16,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatelogHeader(),
              (CatelogModel.items.isNotEmpty)
                  ? CatelogList().expand()
                  : CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
