import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/base_colors.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isPrimary;
  final VoidCallback? onPressed;
  const Button({
    super.key,
    required this.isPrimary,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isPrimary
                  ? primaryButtonBackgroundColor
                  : secondaryButtonBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: isPrimary
                        ? primaryButtonTextColor
                        : secondaryButtonTextColor,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
