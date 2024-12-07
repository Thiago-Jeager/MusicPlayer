import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class PlaylistCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  const PlaylistCell({super.key, required this.onPressed, required this.pObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      pObj["image"],
                      width: 90,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: TColor.primaryText28),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                pObj["name"],
                style: TextStyle(
                    color: TColor.primaryText60,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
