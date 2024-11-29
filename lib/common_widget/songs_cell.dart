import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class SongsCell extends StatelessWidget {
  final Map mObj;

  const SongsCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.asset(
              mObj["image"],
              width: double.maxFinite,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            mObj["name"],
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Text(
            mObj["artists"],
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
