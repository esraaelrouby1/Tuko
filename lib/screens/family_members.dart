import 'package:flutter/material.dart';
import 'package:tuko/components/item_list.dart';
import 'package:tuko/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        sound: 'sounds/family/father.wav',
        image: 'assets/images/family_members/dad.png',
        jpName: '父 (Chichi)',
        enName: 'Father'),
    ItemModel(
        sound: 'sounds/family/mother.wav',
        image: 'assets/images/family_members/mom.png',
        jpName: '母 (hahaoya)',
        enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family/older_bother.wav',
        image: 'assets/images/family_members/old-brother.png',
        jpName: '兄 (ani)',
        enName: 'Older Brother'),
    ItemModel(
        sound: 'sounds/family/older_sister.wav',
        image: 'assets/images/family_members/older sister.png',
        jpName: '姉 (ane)',
        enName: 'Older Sister'),
    ItemModel(
        sound: 'sounds/family/younger_brohter.wav',
        image: 'assets/images/family_members/younger brother.png',
        jpName: '弟 (Otōto)',
        enName: 'Younger Brother'),
    ItemModel(
        sound: 'sounds/family/younger_sister.wav',
        image: 'assets/images/family_members/y-sister.png',
        jpName: '妹 (Imōto)',
        enName: 'Younger Sister'),
    ItemModel(
        sound: 'sounds/family/grand_father.wav',
        image: 'assets/images/family_members/grandfather.png',
        jpName: '祖父 (sofu)',
        enName: 'Grandfather'),
    ItemModel(
        sound: 'sounds/family/grand_mother.wav',
        image: 'assets/images/family_members/old-woman.png',
        jpName: '祖母 (sobo)',
        enName: 'Grandmother'),
    ItemModel(
        sound: 'sounds/family/son.wav',
        image: 'assets/images/family_members/son.png',
        jpName: '息子 (musuko)',
        enName: 'Son'),
    ItemModel(
        sound: 'sounds/family/daughter.wav',
        image: 'assets/images/family_members/daughter (1).png',
        jpName: '娘 (musume)',
        enName: 'Daughter'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 58, 2),
        title: Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: Color(
              0xff5D8B3E,
            ),
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
