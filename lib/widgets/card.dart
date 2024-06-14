import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String description;
  final String value;
  const Card({
    super.key,
    required this.description,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF000F1A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  description,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}
