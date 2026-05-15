import 'package:flutter/material.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class GuestWidget extends StatelessWidget {
  const GuestWidget({super.key, required this.text, required this.subtitle});
  final String text;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTextStyles.bodyLarge.copyWith(
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subtitle,
          style: AppTextStyles.bodyMedium.copyWith(fontFamily: 'raleway'),
        ),
      ],
    );
  }
}
