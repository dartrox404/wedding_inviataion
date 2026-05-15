import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class EighthPage extends StatelessWidget {
  const EighthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/15.webp'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svg/celebration-party-winter-svgrepo-com.svg',
            // ignore: deprecated_member_use
            color: AppTextStyles.classicgold,
          ),
          const Gap(AppSizes.kspace20),
          Text(
            'Pre Wedding Events',
            style: AppTextStyles.h4.copyWith(
              fontFamily: 'aston',
              color: AppTextStyles.classicgold,
            ),
          ),
          Image.asset(
            'assets/images/24.webp',
            color: AppTextStyles.classicgold,
            width: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppTextStyles.classicgold,
                  shape: BoxShape.circle,
                ),
              ),
              Gap(AppSizes.kspace12),
              Text(
                'Mehndi Ceremony',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontFamily: 'raleway',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ],
          ),
          const Gap(AppSizes.kspace8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppTextStyles.classicgold,
                  shape: BoxShape.circle,
                ),
              ),
              Gap(AppSizes.kspace12),
              Text(
                'Barat Ceremony',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontFamily: 'raleway',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ],
          ),
          const Gap(AppSizes.kspace8),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: AppTextStyles.classicgold,
                  shape: BoxShape.circle,
                ),
              ),
              Gap(AppSizes.kspace12),
              Text(
                'Walima Ceremony',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontFamily: 'raleway',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
