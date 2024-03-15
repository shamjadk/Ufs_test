import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';
import 'package:ufs_test/view/widgets/accreditation_widget.dart';
import 'package:ufs_test/view/widgets/featured_training_widget.dart';
import 'package:ufs_test/view/widgets/review_list_widget.dart';
import 'package:ufs_test/view/widgets/tab_bar_widget.dart';
import 'package:ufs_test/view/widgets/training_count_widget.dart';
import 'package:ufs_test/view/widgets/training_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final accreditationImageList = [
    'assets/images/img_accreditation_1.png',
    'assets/images/img_accreditation_2.png',
    'assets/images/img_accreditation_2.png',
  ];
  final clientsImageList = [
    'assets/images/img_accreditation_2.png',
    'assets/images/img_client_2.png',
    'assets/images/img_client_2.png',
  ];
  bool isClicked = true;
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
                  scrolledUnderElevation: 0,
                  elevation: 0,
                  leading: Image.asset('assets/icons/ic_menu.png'),
                  actions: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isClicked = !isClicked;
                        });
                      },
                      child: Text(
                        isClicked ? 'Log out' : 'log in',
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
                const TabBarWidget(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    TrainingCountWidget(
                        bgColor: AppTheme.trainingCount,
                        borderColor: Colors.grey.shade400,
                        circleColor: AppTheme.trainingCountCA,
                        content: 'Total Training Attended',
                        count: '10'),
                    const SizedBox(
                      width: 16,
                    ),
                    TrainingCountWidget(
                        bgColor: AppTheme.upcomingTrainingCount,
                        borderColor: Colors.pink.shade100,
                        circleColor: AppTheme.upcomingTrainingCountCA,
                        content: 'Upcoming Trainings',
                        count: '5'),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Explore our various ',
                    style: TextStyle(
                        color: AppTheme.textColor,
                        fontSize: 44,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'training',
                        style: TextStyle(
                          color: AppTheme.bgColorBottom,
                          shadows: [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: AppTheme.textColor,
                            ),
                            Shadow(
                                offset: Offset(1.5, -1.5),
                                color: AppTheme.textColor),
                            Shadow(
                                offset: Offset(1.5, 1.5),
                                color: AppTheme.textColor),
                            Shadow(
                                offset: Offset(-1.5, 1.5),
                                color: AppTheme.textColor)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const FeaturedTrainingWidget(),
                const SizedBox(
                  height: 24,
                ),
                const TrainingListWidget(),
                const SizedBox(
                  height: 24,
                ),
                AccreditaionWidget(
                    title: 'Accreditation', list: accreditationImageList),
                const SizedBox(
                  height: 24,
                ),
                const ReviewListWidget(),
                const SizedBox(
                  height: 24,
                ),
                AccreditaionWidget(
                    list: clientsImageList, title: 'Our Clients'),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
