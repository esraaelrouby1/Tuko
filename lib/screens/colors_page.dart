import 'package:flutter/material.dart';
import 'package:tuko/components/item_list.dart';
import 'package:tuko/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: '黒 (Kuro)',
        enName: 'Black'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: '赤 (Aka)',
        enName: 'Red'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: '黄色 (Kiiro)',
        enName: 'Yellow'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: '茶色 (Chairo)',
        enName: 'Brown'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: '白 (Shiro)',
        enName: 'White'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: '緑 (Midori)',
        enName: 'Green'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: '灰色 (Haiiro)',
        enName: 'Grey'),
    ItemModel(
        sound: 'sounds/colors/dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: '(Dasutiierō)',
        enName: 'Dusty Yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 41, 100),
        title: Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color(0xff854CAE),
            item: numbers[index],
          );
        },
      ),
    );
  }

//   List<Widget> getList(List<Number> numbers) {
//     List<Widget> itemsList = [];
//     for (int i = 0; i < numbers.length; i++) {
//       itemsList.add(Item(
//         number: numbers[i],
//       ));
//     }
//     return itemsList;
//   }
}
