import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class IconText extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  const IconText(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40,
          child: ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(
                  color: TColor.primaryText80, fontWeight: FontWeight.bold),
            ),
            onTap: onTap,
          ),
        ),
        Divider(
          color: TColor.primaryText80,
          indent: 70,
        ),
      ],
    );
  }
}
