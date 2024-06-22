import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/widgets/base_card.dart';

class TransactionCard extends StatelessWidget {
  final String description;
  final String value;
  const TransactionCard({
    super.key,
    required this.description,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
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
    ));
  }
}
