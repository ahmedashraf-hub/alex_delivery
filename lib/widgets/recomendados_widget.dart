import 'package:alex_delivery/components/arrow_button.dart';
import 'package:alex_delivery/components/favoirte_button.dart';
import 'package:alex_delivery/models/recomendados_model.dart';
import 'package:alex_delivery/views/details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecomendadosWidget extends StatelessWidget {
  final RecomendadosModel recomendados;
  const RecomendadosWidget({super.key, required this.recomendados});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                recomendados.recomendadImage,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recomendados.recomendadDesription,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Text(
                      recomendados.recomendadTitle,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      recomendados.recomendadSubTitle,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    Text(
                      recomendados.recomendadPrice,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavoriteButton(),
                  ArrowButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsView()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
