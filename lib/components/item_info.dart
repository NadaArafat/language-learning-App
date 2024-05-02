
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({required this.itemModel,super.key});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.jpName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                itemModel.enName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: IconButton(
            onPressed: () {
              itemModel.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],),
    );
  }
}
