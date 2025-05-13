class Item {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  int quantity;

  Item({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    this.quantity = 1,
  });
}
