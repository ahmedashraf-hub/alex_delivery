import 'package:alex_delivery/styles/app_colors.dart';
import 'package:alex_delivery/views/carrito_view.dart';
import 'package:alex_delivery/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskBar extends StatelessWidget {
  const TaskBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
                padding: EdgeInsets.zero,
              ),
              child: SvgPicture.asset(
                'assets/images/home_icon.svg',
                width: 20,
                height: 20,
              ),
            ),
            SvgPicture.asset(
              'assets/images/shop_icon.svg',
              width: 20,
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: AppColors.secondary,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarritoView()),
                );
              },
              child: SvgPicture.asset('assets/images/carrito_icon.svg'),
            ),
            Icon(Icons.favorite_border, color: AppColors.grey, size: 20),
            CircleAvatar(
              radius: 12,
              child: Image.asset('assets/images/profilee.png'),
            ),
          ],
        ),
      ),
    );
  }
}
