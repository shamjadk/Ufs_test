import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';
import 'package:ufs_test/view/widgets/tab_widgte.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String authenticationStatus = 'Login  ';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.sizeOf(context).width,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppTheme.bgColortop,
                AppTheme.bgColorBottom,
                AppTheme.bgColorBottom,
                AppTheme.bgColorBottom,
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  leading: Image.asset('assets/icons/ic_menu.png'),
                  actions: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          authenticationStatus = 'Log out  ';
                        });
                      },
                      child: Text(
                        authenticationStatus,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TabBar(
                    indicatorColor: AppTheme.takeAlook,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
                    dividerColor: Colors.transparent,
                    labelPadding: EdgeInsets.all(8),
                    tabs: [
                      TabWidget(
                          iconPath: 'assets/icons/ic_training.svg',
                          title: 'Training'),
                      TabWidget(
                          iconPath: 'assets/icons/ic_inspection.svg',
                          title: 'Ispection'),
                      TabWidget(
                          iconPath: 'assets/icons/ic_calibration.svg',
                          title: 'Calibration'),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
