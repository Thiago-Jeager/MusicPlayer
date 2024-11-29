import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class SongsRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const SongsRow(
      {super.key,
      required this.sObj,
      required this.onPressedPlay,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: onPressedPlay,
              icon: const Icon(Icons.play_arrow_rounded),
              color: TColor.primary,
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
            ))
          ],
        )
      ],
    );
  }
}
