import 'package:flutter/material.dart';
import 'package:my_tunes/models/item_model.dart';
import 'package:my_tunes/widgets/black_block.dart';
import 'package:my_tunes/widgets/tune_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  List<ItemModel> listModels() {
    return [
      ItemModel(soundPath: "note1.wav"),
      ItemModel(soundPath: "note2.wav"),
      ItemModel(soundPath: "note3.wav"),
      ItemModel(soundPath: "note4.wav"),
      ItemModel(soundPath: "note5.wav"),
      ItemModel(soundPath: "note6.wav"),
      ItemModel(soundPath: "note7.wav"),
    ];
  }

  List<Widget> getList() {
    List<Widget> list = [
      const SizedBox(
        height: 25,
      ),
    ];
    List<BlackBlock> x =
        listModels().sublist(1).map((e) => BlackBlock(model: e)).toList();
    for (var element in x) {
      list.add(
        const SizedBox(
          height: 25,
        ),
      );
      list.add(element);
    }
    list.add(
      const SizedBox(
        height: 50,
      ),
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tunes App",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff243139),
        ),
        body: Stack(
          children: [
            Column(
              children: listModels().map((e) => TuneItem(model: e)).toList(),
            ),
            Column(
              children: getList(),
            )
          ],
        ));
  }
}
