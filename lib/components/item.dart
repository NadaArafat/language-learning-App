
import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';

import '../models/item_model.dart';

class Item extends StatelessWidget {
  const Item({required this.itemModel, super.key});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white70,
            child: Image.asset(
              itemModel.image!,
            ),
          ),
          Expanded(child:ItemInfo(itemModel: itemModel)),
        ],
      ),
    );
  }
}
