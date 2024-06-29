import 'package:audioplayers/audioplayers.dart';

class ItemModel {

  final String soundPath;

  ItemModel({required this.soundPath});
  void playSound() {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource(soundPath));
  }
}
