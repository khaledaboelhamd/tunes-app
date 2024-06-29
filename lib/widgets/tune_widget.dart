
import 'package:flutter/material.dart';
import 'package:my_tunes/models/item_model.dart';



class TuneItem extends StatelessWidget {
  const TuneItem({
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
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 0.5)),
      ),
    ));
  }
}
