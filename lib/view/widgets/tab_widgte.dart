import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class TabWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  const TabWidget({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          iconPath,
          height: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(color: AppTheme.textColor, fontSize: 16),
        ),
      ],
    );
  }
}
