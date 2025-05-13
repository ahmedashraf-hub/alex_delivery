import 'package:alex_delivery/models/item.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RealizerCompra extends StatelessWidget {
  final List<Item> items;

  const RealizerCompra({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final double subtotal = items.fold(
      0.0,
      (sum, item) => sum + (item.price * item.quantity),
    );
    final double total = subtotal;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('SubTotal:', style: AppTextStyles.regular11),
                Text(
                  '\$${subtotal.toStringAsFixed(2)} usd',
                  style: AppTextStyles.medium11,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Envio:', style: AppTextStyles.regular11),
                Text('Gratis', style: AppTextStyles.medium11),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:', style: AppTextStyles.semiBold17),
                Text(
                  '\$${total.toStringAsFixed(2)} usd',
                  style: AppTextStyles.semiBold17,
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/images/carrito/Realizar compra.svg'),
        ],
      ),
    );
  }
}
