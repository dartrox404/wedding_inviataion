import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class NintthPage extends StatelessWidget {
  const NintthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/16.webp'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SvgPicture.asset(
                'assets/svg/gift-svgrepo-com.svg',
                height: AppSizes.kspace32,
                // ignore: deprecated_member_use
                color: AppTextStyles.classicgold,
              ),
              const Gap(AppSizes.kspace8),
              Text(
                textAlign: TextAlign.center,
                '❝ Your Absence is Our Biggeest Gift♡ ❞',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontFamily: 'ab',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/25.webp',
            width: 180,
            height: 50,
            color: AppTextStyles.classicgold,
          ),
          Column(
            children: [
              SvgPicture.asset(
                'assets/svg/envelope-open-svgrepo-com.svg',
                // ignore: deprecated_member_use
                color: AppTextStyles.classicgold,
              ),
              const Gap(AppSizes.kspace16),
              Text(
                'Send a Message',
                style: AppTextStyles.buttonMedium.copyWith(
                  fontFamily: 'ab',
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
