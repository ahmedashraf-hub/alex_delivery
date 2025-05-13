import 'package:alex_delivery/styles/app_colors.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MiTrefajoWidget extends StatelessWidget {
  const MiTrefajoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 125,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.secondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/images/carrito/white_home_icon.svg'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mi casa', style: AppTextStyles.semiBold10),
                  Text('Direción de ejemplo', style: AppTextStyles.regular9),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
            border: Border.all(color: Color(0xFFE2EDF2), width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/images/carrito/purple_home_icon.svg'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mi casa',
                    style: AppTextStyles.semiBold10.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Direción de ejemplo',
                    style: AppTextStyles.regular9.copyWith(
                      color: Color(0XFFAEAEAE),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        FloatingActionButton(
          shape: CircleBorder(),
          elevation: 0,
          backgroundColor: AppColors.secondary,
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ],
    );
  }
}
