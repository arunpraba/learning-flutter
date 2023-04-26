import 'dart:convert';
import 'package:fllearn/models/catelog.dart';
import 'package:fllearn/widgets/items_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    await Future.delayed(Duration(seconds: 2));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: (CatelogModel.items.isEmpty)
          ? Center(child: CircularProgressIndicator())
          : ItemsListWidget(),
    );
  }
}
