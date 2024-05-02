import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import '../components/item.dart';
import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Hai,watashi wa kitaimasu',
      enName: 'yes,I\'m coming.',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    ItemModel(
      jpName: 'Namae wa nandesuka',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu.',
      enName: 'I love anime.',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka.',
      enName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga \ndaisukidesu.',
      enName: 'I love programming.',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF65375E),
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ItemInfo(itemModel: phrases[index]);
        },
      ),
    );
  }
}
