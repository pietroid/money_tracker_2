import 'package:flutter/material.dart';
import 'package:flutter_template/entities/transaction.dart';
import 'package:teia_dart/utils/presentation/teia_builder.dart';

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
      TeiaBuilder(
          on: (event) => true,
          builder: (context, allEvents, eventsChanged, eventsDeleted) {
            final allTransactions = allEvents.map((e) => e as Transaction);
            final value = allTransactions.fold<double>(
                0, (previousValue, element) => previousValue + element.value);
            return Text(
              'R\$ ${value.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 40, color: Colors.white),
            );
          }),
    ]);
  }
}
