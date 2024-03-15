import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class AccreditaionWidget extends StatelessWidget {
  final String title;
  final List<String> list;
  const AccreditaionWidget(
      {super.key, required this.list, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) => Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage(list[index]), fit: BoxFit.cover)),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 16,
            ),
          ),
        ),
      ],
    );
  }
}
