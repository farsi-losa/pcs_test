import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final double iconSize;
  final double fontSize;
  final double spacing; // Tambahkan parameter untuk kontrol jarak
  final Color? color;

  const IconTextButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.isSelected,
    this.iconSize = 20,
    this.fontSize = 10,
    this.spacing = 2, // Default jarak 4 pixel
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: iconSize, color: isSelected ? color : Colors.grey),
          SizedBox(height: spacing), // Kontrol jarak disini
          Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              color: isSelected ? color : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Usage:
