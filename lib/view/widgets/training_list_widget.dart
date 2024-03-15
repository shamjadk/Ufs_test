import 'package:flutter/material.dart';
import 'package:ufs_test/view/widgets/overview_button_widget.dart';

class TrainingListWidget extends StatelessWidget {
  const TrainingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage('assets/images/img_training_1.png'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 280,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black87,
                          Colors.transparent,
                          Colors.transparent
                        ],
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Zipline Training',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Image.asset(
                            'assets/icons/ic_star.png',
                            height: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(
                          'Experience the ultimate thrill with our Zipline Training program',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Expanded(child: Text('')),
                      const OverViewButtonWidget()
                    ],
                  ),
                )
              ],
            )),
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
      ),
    );
  }
}
