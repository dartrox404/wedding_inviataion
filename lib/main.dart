import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weeding_invitation/pages/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
