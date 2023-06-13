import 'package:Soundboard/sound.dart';
import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  const SoundButton(
      {super.key,
      required this.sound,
      required this.onPlay,
      required this.onStop,
      required this.playing});

  final Sound sound;
  final bool playing;
  final void Function() onPlay;
  final void Function() onStop;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
            width: 100,
            child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(sound.name)),
                      IconButton.filledTonal(
                          onPressed: playing ? onStop : onPlay,
                          icon: Icon(!playing ? Icons.play_arrow : Icons.stop))
                    ]))));
  }
}
