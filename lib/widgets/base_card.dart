import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final Widget child;
  const BaseCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 49, 84),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: child,
          )),
    );
  }
}
