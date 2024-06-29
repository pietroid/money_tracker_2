import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  final void Function(String text) onChanged;
  const BaseTextField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border.all(color: const Color.fromARGB(255, 0, 91, 111), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: TextField(
          decoration: const InputDecoration.collapsed(hintText: ''),
          onChanged: onChanged,
          cursorHeight: 18,
          cursorColor: const Color.fromARGB(255, 0, 91, 111),
          cursorWidth: 2,
        ),
      ),
    );
  }
}
