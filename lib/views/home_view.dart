import 'package:alex_delivery/models/categories_model.dart';
import 'package:alex_delivery/models/populars_model.dart';
import 'package:alex_delivery/models/recomendados_model.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:alex_delivery/widgets/category_widget.dart';
import 'package:alex_delivery/widgets/custom_app_bar.dart';
import 'package:alex_delivery/widgets/popular_widget.dart';
import 'package:alex_delivery/widgets/recomendados_widget.dart';
import 'package:alex_delivery/widgets/task_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<CategoriesModel> categories = [
    CategoriesModel(
      categoryImage: 'assets/images/Taco.svg',
      categoryName: 'Tacos',
      categoryColor: Color(0XFFD0E6A5),
    ),
    CategoriesModel(
      categoryImage: 'assets/images/Fries.svg',
      categoryName: 'Frises',
      categoryColor: Color(0XFF86E3CE),
    ),
    CategoriesModel(
      categoryImage: 'assets/images/Burger.svg',
      categoryName: 'Burgers',
      categoryColor: Color(0XFFFFDD95),
    ),
    CategoriesModel(
      categoryImage: 'assets/images/Pizza.svg',
      categoryName: 'Pizza',
      categoryColor: Color(0XFFFFACAC),
    ),
    CategoriesModel(
      categoryImage: 'assets/images/Burritos.svg',
      categoryName: 'Burritos',
      categoryColor: Color(0XFFCCAAD9),
    ),
  ];

  final List<PopularsModel> populars = [
    PopularsModel(
      popularImage: 'assets/images/pizaaaa.svg',
      popularTitle: 'Pizza Clásica',
      popularSubTitle: 'Salsa clásica de la casa',
      popularPrice: '\$12.58',
    ),
    PopularsModel(
      popularImage: 'assets/images/Burger.svg',
      popularTitle: 'Hamburguesa mix',
      popularSubTitle: 'Doble carne con queso',
      popularPrice: '\$12.58',
    ),
    PopularsModel(
      popularImage: 'assets/images/pizaaaa.svg',
      popularTitle: 'Pizza Clásica',
      popularSubTitle: 'Salsa clásica de la casa',
      popularPrice: '\$12.58',
    ),
    PopularsModel(
      popularImage: 'assets/images/Burger.svg',
      popularTitle: 'Hamburguesa mix',
      popularSubTitle: 'Doble carne con queso',
      popularPrice: '\$12.58',
    ),
    PopularsModel(
      popularImage: 'assets/images/pizaaaa.svg',
      popularTitle: 'Pizza Clásica',
      popularSubTitle: 'Salsa clásica de la casa',
      popularPrice: '\$12.58',
    ),
    PopularsModel(
      popularImage: 'assets/images/Burger.svg',
      popularTitle: 'Hamburguesa mix',
      popularSubTitle: 'Doble carne con queso',
      popularPrice: '\$12.58',
    ),
  ];

  final List<RecomendadosModel> recomendados = [
    RecomendadosModel(
      recomendadImage: 'assets/images/Malteadastropicales2.svg',
      recomendadDesription: 'Naturales',
      recomendadTitle: 'Malteadas tropicales',
      recomendadSubTitle: 'Elaborado con jugos naturales',
      recomendadPrice: '\$12.58',
    ),
    RecomendadosModel(
      recomendadImage: 'assets/images/Malteadastropicales2.svg',
      recomendadDesription: 'Naturales',
      recomendadTitle: 'Malteadas tropicales',
      recomendadSubTitle: 'Elaborado con jugos naturales',
      recomendadPrice: '\$12.58',
    ),
    RecomendadosModel(
      recomendadImage: 'assets/images/Malteadastropicales2.svg',
      recomendadDesription: 'Naturales',
      recomendadTitle: 'Malteadas tropicales',
      recomendadSubTitle: 'Elaborado con jugos naturales',
      recomendadPrice: '\$12.58',
    ),
    RecomendadosModel(
      recomendadImage: 'assets/images/Malteadastropicales2.svg',
      recomendadDesription: 'Naturales',
      recomendadTitle: 'Malteadas tropicales',
      recomendadSubTitle: 'Elaborado con jugos naturales',
      recomendadPrice: '\$12.58',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Explorer Categories', style: AppTextStyles.semiBold16),
                  Text('Ver todos', style: AppTextStyles.regular12),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CategoryWidget(category: categories[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Popular products',
                  textAlign: TextAlign.left,
                  style: AppTextStyles.semiBold16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: populars.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PopularWidget(popular: populars[index]);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: Text('Recomendados', style: AppTextStyles.semiBold16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 112,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recomendados.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return RecomendadosWidget(
                      recomendados: recomendados[index],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 25),
            TaskBar(),
          ],
        ),
      ),
    );
  }
}
