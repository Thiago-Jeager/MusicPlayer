import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class AllSongRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const AllSongRow(
      {super.key,
      required this.sObj,
      required this.onPressedPlay,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    sObj["image"],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: TColor.primaryText28),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: TColor.bg,
                    borderRadius: BorderRadius.circular(7.5),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sObj["name"],
                    style: TextStyle(
                        color: TColor.primaryText60,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sObj["artists"],
                    style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
            IconButton(
              onPressed: onPressedPlay,
              icon: const Icon(Icons.play_arrow_rounded),
              color: TColor.primary,
            ),
          ],
        )
      ],
    );
  }
}
