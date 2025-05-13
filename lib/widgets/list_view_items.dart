import 'package:alex_delivery/models/item.dart';
import 'package:alex_delivery/styles/app_colors.dart';
import 'package:alex_delivery/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  final List<Item> items;
  final VoidCallback onItemsChanged;

  const ListViewItems({
    super.key,
    required this.items,
    required this.onItemsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: 250,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: const Color(0xFF707070)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            item.imagePath,
                            width: 95,
                            height: 95,
                            fit: BoxFit.cover,
                          ),
                          Text(item.name, style: AppTextStyles.semiBold19),
                          Text(
                            item.description,
                            style: AppTextStyles.light10,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFF3F3F3),
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  minimumSize: const Size(22, 22),
                                  padding: const EdgeInsets.only(
                                    right: 6,
                                    left: 6,
                                    bottom: 12,
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  if (item.quantity > 1) {
                                    item.quantity--;
                                  } else {
                                    items.removeAt(index);
                                  }
                                  onItemsChanged();
                                },
                                child: const Icon(Icons.minimize, size: 22),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  '${item.quantity}',
                                  style: AppTextStyles.medium14,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.secondary,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  minimumSize: const Size(22, 22),
                                  padding: const EdgeInsets.all(6),
                                  elevation: 0,
                                ),
                                onPressed: () {
                                  item.quantity++;
                                  onItemsChanged();
                                },
                                child: const Icon(Icons.add, size: 22),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  '\$${((item.price * item.quantity)).toStringAsFixed(2)}',
                                  style: AppTextStyles.semiBold20.copyWith(
                                    color: const Color(0xFF20D0C4),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  right: -10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const CircleBorder(),
                      minimumSize: const Size(36, 36),
                      padding: const EdgeInsets.all(0),
                      elevation: 2,
                    ),
                    onPressed: () {
                      items.removeAt(index);
                      onItemsChanged();
                    },
                    child: const Icon(Icons.delete_outline, size: 24),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
