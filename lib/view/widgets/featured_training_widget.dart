import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class FeaturedTrainingWidget extends StatelessWidget {
  const FeaturedTrainingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured Training',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppTheme.textColor,
              ),
            ))
      ],
    );
  }
}
