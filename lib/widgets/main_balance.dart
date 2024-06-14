import 'package:flutter/material.dart';

class MainBalance extends StatelessWidget {
  final double value;
  const MainBalance({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Saldo atual',
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
      Text(
        'R\$ ${value.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 40, color: Colors.white),
      ),
    ]);
  }
}
