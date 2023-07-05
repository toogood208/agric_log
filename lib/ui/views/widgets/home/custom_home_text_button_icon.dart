import 'package:flutter/material.dart';

class CustomHomeTextIconButton extends StatelessWidget {
  const CustomHomeTextIconButton(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.label});

  final VoidCallback onPress;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.green,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}