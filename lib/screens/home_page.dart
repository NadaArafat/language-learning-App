import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NumbersPage();
              }));
            },
            color: Colors.deepPurple,
            text: 'Numbers',
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const FamilyMembersPage();
              }));
            },
            color: Colors.purple,
            text: 'Family Members',
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ColorsPage();
              }));
            },
            color: const Color(0xFFBD6FCA),
            text: 'Colors',
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhrasesPage();
              }));
            },
            color: const Color(0xFF65375E),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}

