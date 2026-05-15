import 'package:flutter/material.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/theme/app_styles.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppTextStyles.classicgold,
      style: AppTextStyles.bodyMedium.copyWith(
        fontFamily: 'raelway',
        color: AppTextStyles.classicgold,
      ),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppTextStyles.bodyMedium.copyWith(
          fontFamily: 'poppins',
          color: AppTextStyles.classicgold,
        ),
        prefixIcon: Icon(icon, color: AppTextStyles.classicgold),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
        ),
        filled: true,
        fillColor: AppTextStyles.classicgold.withValues(alpha: .2),
      ),
    );
  }
}
