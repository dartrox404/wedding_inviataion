import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';
import 'package:weeding_invitation/core/widgets/countdown_widget.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/7.webp'),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.kspace32,
              horizontal: AppSizes.kspace16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Lets Begain the Countdown',
                  style: AppTextStyles.h2.copyWith(
                    fontFamily: 'aston',
                    color: AppTextStyles.classicgold,
                  ),
                ),

                Column(
                  children: [
                    CountdownWidget(text: '05', subtitle: 'Days'),
                    const Gap(AppSizes.kspace10),
                    CountdownWidget(text: '80', subtitle: 'Hours'),
                    const Gap(AppSizes.kspace10),
                    CountdownWidget(text: '80', subtitle: 'Minute'),
                    const Gap(AppSizes.kspace10),
                    CountdownWidget(text: '45', subtitle: 'Seconds'),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Venue: Gmk Marquee',
                        style: AppTextStyles.bodyLarge.copyWith(
                          fontFamily: 'aston',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                      const Gap(AppSizes.kspace10),
                      Text(
                        '  ───────── ౨ৎ ─────────',
                        style: AppTextStyles.bodyMedium.copyWith(
                          fontFamily: 'aston',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
