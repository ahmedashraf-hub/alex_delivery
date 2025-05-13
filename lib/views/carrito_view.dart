import 'package:alex_delivery/models/item.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:alex_delivery/widgets/list_view_items.dart';
import 'package:alex_delivery/widgets/mi_trefajo_widget.dart';
import 'package:alex_delivery/widgets/realizer_compra.dart';
import 'package:alex_delivery/widgets/task_bar.dart';
import 'package:flutter/material.dart';

class CarritoView extends StatefulWidget {
  const CarritoView({super.key});

  @override
  CarritoViewState createState() => CarritoViewState();
}

class CarritoViewState extends State<CarritoView> {
  final List<Item> items = [
    Item(
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam nam necessitatibus nemo pariatur provident.',
      price: 20.0,
      imagePath: 'assets/images/carrito/burger2.jpg',
    ),
    Item(
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam nam necessitatibus nemo pariatur provident.',
      price: 20.0,
      imagePath: 'assets/images/carrito/burger3.jpg',
    ),
    Item(
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam nam necessitatibus nemo pariatur provident.',
      price: 20.0,
      imagePath: 'assets/images/crip.jpg',
    ),
    Item(
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam nam necessitatibus nemo pariatur provident.',
      price: 20.0,
      imagePath: 'assets/images/carrito/burger3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Carrito', style: AppTextStyles.semiBold22),
        elevation: 2,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MiTrefajoWidget(),
            ListViewItems(items: items, onItemsChanged: () => setState(() {})),
            RealizerCompra(items: items),
            const TaskBar(),
          ],
        ),
      ),
    );
  }
}
