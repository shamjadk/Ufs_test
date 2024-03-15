import 'package:flutter/material.dart';
import 'package:ufs_test/theme/theme.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'See what our customer says',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(16),
                    width: 330,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Image.asset(
                                'assets/images/img_person.png',
                              ),
                            ),
                            Image.asset('assets/icons/ic_inverted_comma.png')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                child: Image.asset(
                                    'assets/icons/ic_cargomatic.png')),
                            const SizedBox(
                              height: 8,
                            ),
                            const SizedBox(
                              width: 220,
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC'),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 7),
                                  height: 30,
                                  width: 2,
                                  color: AppTheme.textColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jerin Thomas',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'CEO & CO-FOUNDER OF ARABTEC',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 16,
                  ),
              itemCount: 2),
        ),
      ],
    );
  }
}
