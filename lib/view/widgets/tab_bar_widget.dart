import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';
import 'package:ufs_test/view/widgets/tab_widgte.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        indicatorColor: AppTheme.takeAlook,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 3,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8),
        tabs: [
          TabWidget(
              iconPath: 'assets/icons/ic_training.png', title: 'Training'),
          TabWidget(
              iconPath: 'assets/icons/ic_inspection.png', title: 'Ispection'),
          TabWidget(
              iconPath: 'assets/icons/ic_calibration.png',
              title: 'Calibration'),
        ]);
  }
}
