import 'package:flutter/material.dart';
import 'package:tuko/components/category_item.dart';
import 'package:tuko/components/item_list.dart';
import 'package:tuko/screens/colors_page.dart';
import 'package:tuko/screens/family_members.dart';
import 'package:tuko/screens/numbers_page.dart';
import 'package:tuko/screens/family_members.dart';
import 'package:tuko/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Tuko",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: CircleAvatar(
              radius: 112,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/images/cover/wecolme.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ));
              },
              text: "Numbers",
              color: Color(0xffEF9235),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyMembersPage();
                  },
                ));
              },
              text: "Family Members",
              color: Color(
                0xff5D8B3E,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ));
              },
              text: "Colors",
              color: Color(0xff854CAE),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PhrasesPage();
                  },
                ));
              },
              text: "Phrases",
              color: Color(0xff51B0D5),
            ),
          ),
        ],
      ),
    );
  }
}
