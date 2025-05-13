import 'package:alex_delivery/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ArrowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: AppColors.grey,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        minimumSize: const Size(25, 25),
      ),
      onPressed: onPressed,
      child: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
