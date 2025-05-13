import 'package:alex_delivery/components/details_favorite.dart';
import 'package:alex_delivery/models/categories_model.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:alex_delivery/widgets/ingredientes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});

  final List<CategoriesModel> detailsList = [
    CategoriesModel(
      categoryImage: 'assets/images/details/Bread.svg',
      categoryName: 'Bread',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Meat.svg',
      categoryName: 'Meat',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Onion.svg',
      categoryName: 'Onion',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/vegetables.svg',
      categoryName: 'Vegetables',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Bread.svg',
      categoryName: 'Bread',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Meat.svg',
      categoryName: 'Meat',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Onion.svg',
      categoryName: 'Onion',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/vegetables.svg',
      categoryName: 'Vegetables',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Meat.svg',
      categoryName: 'Meat',
    ),
    CategoriesModel(
      categoryImage: 'assets/images/details/Onion.svg',
      categoryName: 'Onion',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 620,
            child: ListView(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: SvgPicture.asset(
                        'assets/images/bigBurger.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          Text(
                            'Hamburguesa especial',
                            style: AppTextStyles.semiBold18.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 48),
                        ],
                      ),
                    ),
                    Positioned(bottom: 24, right: 24, child: DetailsFavorite()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Descripción',
                        style: AppTextStyles.semiBold18,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyamerat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus estLorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur',
                        style: AppTextStyles.light10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ingredientes',
                              style: AppTextStyles.semiBold18,
                            ),
                            Text(
                              '10 ingredientes',
                              style: AppTextStyles.light10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: detailsList.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return IngredientsWidget(
                              ingredient: detailsList[index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 2,
                    offset: Offset(0, -1),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Ordenarahore.svg',
                      height: 73,
                      width: 250,
                    ),
                    Text('\$12.58', style: AppTextStyles.semiBold30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
