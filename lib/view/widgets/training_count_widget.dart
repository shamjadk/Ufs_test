import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class TrainingCountWidget extends StatelessWidget {
  final Color bgColor;
  final String content;
  final Color borderColor;
  final String count;
  final Color circleColor;
  const TrainingCountWidget(
      {super.key,
      required this.bgColor,
      required this.borderColor,
      required this.circleColor,
      required this.content,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 90,
              child: Text(
                content,
                style: const TextStyle(
                    color: AppTheme.textColor, fontWeight: FontWeight.w500),
              ),
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: circleColor,
              child: Center(
                child: Text(
                  count,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
