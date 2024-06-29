import 'package:flutter/material.dart';
import 'package:my_tunes/models/item_model.dart';



class BlackBlock extends StatelessWidget {
  const BlackBlock({
    super.key,
    required this.model,
  });
  final ItemModel model;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        model.playSound();
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white, width: 0.5)),
      ),
    ));
  }
}
