import 'package:alex_delivery/styles/app_colors.dart';
import 'package:alex_delivery/views/home_view.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splashandonboarding/Splash_image.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'R E S T U R A N T  APP',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              const SizedBox(height: 32),
              const Text(
                'Explore and order your favorite food',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Go',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 64),
            ],
          ),
        ],
      ),
    );
  }
}
