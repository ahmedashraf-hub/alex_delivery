import 'package:alex_delivery/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        // Check if the widget is still mounted
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/splashandonboarding/Splash_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: SizedBox()),
      ),
    );
  }
}
