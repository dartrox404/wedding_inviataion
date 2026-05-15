import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/27.webp'),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Text(
              "The Wedding Celebration of",
              style: AppTextStyles.bodyMedium.copyWith(
                fontFamily: 'raleway',
                letterSpacing: 2,
                color: AppTextStyles.classicgold,
              ),
            ),
            const Gap(AppSizes.kspace32),
            const Gap(AppSizes.kspace32),
            Column(
              children: [
                Text(
                  "Arslan Javed",
                  style: AppTextStyles.h2.copyWith(
                    fontFamily: 'aston',
                    color: AppTextStyles.classicgold,
                  ),
                ),
                Gap(AppSizes.kspace10),
                Text(
                  "&",
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'aston',
                    color: AppTextStyles.classicgold,
                  ),
                ),
                const Gap(AppSizes.kspace10),
                Text(
                  "Ushna Amjad",
                  style: AppTextStyles.h2.copyWith(
                    fontFamily: 'aston',
                    color: AppTextStyles.classicgold,
                  ),
                ),
              ],
            ),
            const Gap(AppSizes.kspace32),
            const Gap(AppSizes.kspace32),
            Text(
              textAlign: TextAlign.center,
              'Request the hounor of\nyour presence',
              style: AppTextStyles.bodyMedium.copyWith(
                fontFamily: 'raleway',
                letterSpacing: 2,
                color: AppTextStyles.classicgold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
