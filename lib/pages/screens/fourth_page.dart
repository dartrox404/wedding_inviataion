import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weeding_invitation/core/const/app_sizes.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List imageslit = [
      'assets/images/1.webp',
      'assets/images/2.webp',
      'assets/images/3.webp',
      'assets/images/6.webp',
    ];
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/19.webp'),
        ),
      ),
      child: CarouselSlider(
        items: imageslit.map((e) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSizes.kspace10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage(e)),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 450,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
