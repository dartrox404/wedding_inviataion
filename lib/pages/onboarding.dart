import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weeding_invitation/pages/homepage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _animationController.dispose();
  }

  void navigate() async {
    _animationController.forward();
    await _controller.forward();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Homepage()),
    );
    _controller.reset();
    _animationController.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7dec0),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double value = Curves.easeInOut.transform(_controller.value);
              return Row(
                children: [
                  Expanded(
                    child: Transform.translate(
                      offset: Offset(-300 * value, 0),
                      child: Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Image.asset(
                          'assets/images/22.webp',
                          fit: BoxFit.contain,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Transform.translate(
                      offset: Offset(300 * value, 0),
                      child: Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Image.asset(
                          fit: BoxFit.contain,
                          'assets/images/21.webp',
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            child: Center(
              child: GestureDetector(
                onTap: () => navigate(),
                child: Lottie.asset(
                  'assets/animations/Celebrations Begin.json',
                  height: 120,
                  controller: _animationController,
                  onLoaded: (value) {
                    _animationController.duration = value.duration;
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
