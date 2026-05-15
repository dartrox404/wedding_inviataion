import 'package:flutter/material.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class CountdownWidget extends StatelessWidget {
  const CountdownWidget({
    super.key,
    required this.text,
    required this.subtitle,
  });
  final String text;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppTextStyles.classicgold,
            borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: AppTextStyles.bodyLarge.copyWith(fontFamily: 'poppins'),
            ),
          ),
        ),
        Text(
          subtitle,
          style: AppTextStyles.bodyMedium.copyWith(
            fontFamily: 'raleway',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
