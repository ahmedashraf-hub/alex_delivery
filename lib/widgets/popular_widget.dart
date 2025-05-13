import 'package:alex_delivery/components/arrow_button.dart';
import 'package:alex_delivery/components/favoirte_button.dart';
import 'package:alex_delivery/models/populars_model.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:alex_delivery/views/details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularWidget extends StatelessWidget {
  final PopularsModel popular;

  const PopularWidget({super.key, required this.popular});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsView()),
          );
        },
        child: Container(
          // height: 240,
          width: 174,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 8,
                right: 8,
                child: FavoriteButton(onPressed: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            spreadRadius: 1,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 46,
                        child: SvgPicture.asset(
                          popular.popularImage,
                          height: 75,
                          width: 75,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popular.popularTitle,
                            style: AppTextStyles.regular12,
                          ),
                          Text(
                            popular.popularSubTitle,
                            style: AppTextStyles.light10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(popular.popularPrice),
                              ArrowButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsView(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
