import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';
import 'package:weeding_invitation/core/widgets/custom_textfeild.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/9.webp'),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.kspace12,
            vertical: AppSizes.kspace10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/24.webp',
                width: 180,
                height: 70,
                color: AppTextStyles.classicgold,
              ),
              const Gap(AppSizes.kspace8),
              Text(
                textAlign: TextAlign.center,
                'We Can\'t Wait to Celebrate With you',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontFamily: 'aston',
                  color: AppTextStyles.classicgold,
                ),
              ),
              Column(
                children: [
                  CustomTextfeild(text: 'Your Name', icon: Iconsax.user),
                  const Gap(AppSizes.kspace12),
                  CustomTextfeild(text: 'Your Email', icon: Iconsax.sms),
                  const Gap(AppSizes.kspace12),
                  CustomTextfeild(text: 'Your Number', icon: Iconsax.mobile),
                  const Gap(AppSizes.kspace12),
                  CustomTextfeild(
                    text: 'Your Message',
                    icon: Iconsax.pen_close,
                  ),
                  const Gap(AppSizes.kspace12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppSizes.kradiusMd,
                          ),
                        ),
                        backgroundColor: AppTextStyles.classicgold.withValues(
                          alpha: .2,
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: AppTextStyles.bodyMedium.copyWith(
                          fontFamily: 'poppins',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                textAlign: TextAlign.center,
                '❝ Together with their families, they request the honor of your presenceꨄ︎ ❞',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontFamily: 'aston',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
