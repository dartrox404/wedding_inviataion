import 'package:flutter/material.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/26.webp'),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 500,
            child: Image.asset(
              'assets/images/29.webp',
              height: 180,
              color: AppTextStyles.classicgold,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.kspace10,
              ),
              child: Text(
                '❝ With the infinite mercy and blessings of Allah, we invite you to our wedding ceremony. Your presence and prayers will mean a lot to us as we begin our new journey together. ❞',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontFamily: 'aston',
                  color: AppTextStyles.classicgold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
