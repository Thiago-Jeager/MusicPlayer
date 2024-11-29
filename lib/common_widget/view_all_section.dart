import 'package:flutter/material.dart';
import 'package:flutter_music/common/color_extension.dart';

class ViewAllSection extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;

  const ViewAllSection(
      {super.key,
      required this.title,
      this.buttonTitle = "Ver todo",
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: TColor.org,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
