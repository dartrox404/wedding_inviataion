import 'package:flutter/material.dart';
import 'package:flutter_scratch_card/flutter_scratch_card.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/23.webp'),
        ),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
          child: SizedBox(
            width: 250,
            height: 200,
            child: ScratchCard(
              threshold: 0.8,
              progressTriggers: [0.8],
              brushSize: 45,
              overlayImageAsset: 'assets/images/13.webp',
              animationType: ScratchAnimationType.lottie,
              animationAsset: 'assets/animations/Celebrations Begin.json',
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff96e6a1).withValues(alpha: .2),
                      blurRadius: 25,
                      spreadRadius: 4,
                      offset: Offset(0, 8),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Color(0xff200122), Color(0xff6f0000)],
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.kspace16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Make Your Presence',
                        style: AppTextStyles.bodyMedium.copyWith(
                          fontFamily: 'poppins',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                      const Gap(AppSizes.kspace10),
                      Text(
                        '30/Dec/2026',
                        style: AppTextStyles.h3.copyWith(
                          fontFamily: 'ab',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                      Text(
                        'Saturday',
                        style: AppTextStyles.bodyMedium.copyWith(
                          fontFamily: 'poppins',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                      Text(
                        '12:30AM',
                        style: AppTextStyles.bodyMedium.copyWith(
                          fontFamily: 'poppins',
                          color: AppTextStyles.classicgold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
