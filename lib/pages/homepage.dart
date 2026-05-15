import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weeding_invitation/pages/screens/eighth_page.dart';
import 'package:weeding_invitation/pages/screens/fifth_page.dart';
import 'package:weeding_invitation/pages/screens/first_page.dart';
import 'package:weeding_invitation/pages/screens/fourth_page.dart';
import 'package:weeding_invitation/pages/screens/last_page.dart';
import 'package:weeding_invitation/pages/screens/nintth_page.dart';
import 'package:weeding_invitation/pages/screens/second_page.dart';
import 'package:weeding_invitation/pages/screens/seventh_page.dart';
import 'package:weeding_invitation/pages/screens/sixth_page.dart';
import 'package:weeding_invitation/pages/screens/third_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      FirstPage(),
      SecondPage(),
      ThirdPage(),
      FourthPage(),
      FifthPage(),
      SixthPage(),
      SeventhPage(),
      EighthPage(),
      NintthPage(),
      LastPage(),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return SizedBox(
                height: MediaQuery.of(context).size.height,
                child: pages[index],
              )
              .animate()
              .fade(duration: const Duration(milliseconds: 800))
              .slideY(begin: 0.1, end: 0)
              .scale(
                begin: const Offset(0.9, 0.9), // zoom in start
                end: const Offset(1, 1),
                duration: 700.ms,
                curve: Curves.easeOut,
              );
        },
      ),
    );
  }
}
