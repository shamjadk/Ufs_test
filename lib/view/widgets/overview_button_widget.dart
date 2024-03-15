import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class OverViewButtonWidget extends StatelessWidget {
  const OverViewButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: 100,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppTheme.takeAlook,
                borderRadius: BorderRadius.circular(30)),
            child: const Center(
                child: Text(
              'Take a look',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          RichText(
              text: const TextSpan(
                  text: 'AED ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                TextSpan(text: '1500   ', style: TextStyle(color: Colors.white))
              ]))
        ],
      ),
    );
  }
}
