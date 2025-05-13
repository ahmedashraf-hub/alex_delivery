import 'package:flutter/material.dart';

class DetailsFavorite extends StatefulWidget {
  const DetailsFavorite({super.key});

  @override
  State<DetailsFavorite> createState() => _DetailsFavoriteState();
}

class _DetailsFavoriteState extends State<DetailsFavorite> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: _isFavorited ? Colors.red : Colors.grey,
        padding: const EdgeInsets.all(8),
        elevation: _isFavorited ? 2 : 0,
      ),
      onPressed: _toggleFavorite,
      child:
          _isFavorited
              ? Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 26, // Slightly larger for white outline
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 22, // Smaller for inner red fill
                  ),
                ],
              )
              : Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 24,
              ),
    );
  }
}
