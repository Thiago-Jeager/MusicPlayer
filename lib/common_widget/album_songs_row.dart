import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class AlbumSongsRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  final bool isPlay;
  const AlbumSongsRow(
      {super.key,
      required this.sObj,
      required this.onPressedPlay,
      required this.onPressed,
      this.isPlay = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: onPressedPlay,
              icon: const Icon(Icons.play_arrow_rounded),
              color: TColor.primary,
              alignment: Alignment.centerLeft,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sObj["name"],
                  style: TextStyle(
                      color: TColor.primaryText60,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
            Text(
              sObj["duration"],
              style: TextStyle(
                  color: TColor.primaryText28,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 80,
              alignment: Alignment.centerRight,
              child: isPlay
                  ? Icon(
                      Icons.music_note,
                      color: TColor.primaryText,
                    )
                  : Icon(
                      Icons.music_note_outlined,
                      color: TColor.primaryText,
                    ),
            )
          ],
        ),
        Divider(
          color: Colors.white.withOpacity(0.8),
          indent: 50,
        )
      ],
    );
  }
}
