import 'package:alex_delivery/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlexDelivery());
}

class AlexDelivery extends StatelessWidget {
  const AlexDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
