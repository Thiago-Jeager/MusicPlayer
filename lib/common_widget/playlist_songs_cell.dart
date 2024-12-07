import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class PlaylistSongsCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onPressedPlay;
  const PlaylistSongsCell(
      {super.key,
      required this.onPressed,
      required this.pObj,
      required this.onPressedPlay});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          pObj["image"],
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.black45,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    pObj["name"],
                    style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    pObj["songs"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.primaryText28,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
              InkWell(
                  onTap: onPressedPlay,
                  child: Icon(
                    Icons.play_circle_fill,
                    color: TColor.primaryText,
                    size: 40,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
