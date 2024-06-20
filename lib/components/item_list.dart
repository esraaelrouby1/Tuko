import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/components/item_info.dart';
import 'package:tuko/models/item.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item, required this.color})
      : super(key: key);
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      color: color,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                color: Color(0xffFFF6DC),
                child: Image.asset(item.image!),
              ),
            ],
          ),
          Expanded(
              child: ItemInfo(
            item: item,
          )),
        ],
      ),
    );
  }
}
