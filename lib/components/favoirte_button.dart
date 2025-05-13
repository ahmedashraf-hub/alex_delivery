import 'package:flutter/material.dart';
import 'package:alex_delivery/styles/app_colors.dart';

class FavoriteButton extends StatefulWidget {
  final VoidCallback? onPressed;

  const FavoriteButton({super.key, this.onPressed});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
    widget.onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _toggleFavorite,
      icon: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_border,
        color: _isFavorited ? Colors.red : AppColors.grey,
        size: 24,
      ),
      padding: EdgeInsets.zero,
    );
  }
}
