import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';
import 'package:weeding_invitation/core/widgets/guest_widget.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/11.webp'),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GuestWidget(text: '4:00PM', subtitle: 'Guest Arrival'),
                const Gap(AppSizes.kspace20),
                GuestWidget(text: '5:00PM', subtitle: 'Wedding Ceremony'),
                const Gap(AppSizes.kspace20),
                GuestWidget(text: '8:00PM', subtitle: 'Dinner Reception'),
              ],
            ),
          ),
          Positioned(
            top: 314,
            left: -150,
            right: 30,
            child: Container(
              height: AppSizes.kspace10,
              width: AppSizes.kspace10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff7e693c),
              ),
            ),
          ),
          Positioned(
            top: 324,
            left: 89,
            child: Container(
              height: 30,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.kradiusSm),
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: -150,
            right: 30,
            child: Container(
              height: AppSizes.kspace10,
              width: AppSizes.kspace10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff7e693c),
              ),
            ),
          ),
          Positioned(
            top: 390,
            left: 89,
            child: Container(
              height: 30,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.kradiusSm),
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: -150,
            right: 30,
            child: Container(
              height: AppSizes.kspace10,
              width: AppSizes.kspace10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff7e693c),
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 89,
            child: Container(
              height: 30,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.kradiusSm),
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
