import 'package:alex_delivery/styles/app_colors.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:alex_delivery/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey.shade200,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchView()),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.search, color: AppColors.secondary),
              const SizedBox(width: 8),
              Text('Search', style: AppTextStyles.regular16),
            ],
          ),
        ),
      ),
      leadingWidth: 150,
      title: Text('Inicio', style: AppTextStyles.semiBold22),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none, color: AppColors.green),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
          child: SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              'assets/images/percent.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
