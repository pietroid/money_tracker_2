import 'package:flutter/material.dart' hide Card;
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/teia_builder.dart';
import 'package:flutter_template/widgets/card.dart';

class History extends StatelessWidget {
  const History({super.key});
  Widget _buildCard(Transaction transaction) {
    return Card(
      description: transaction.description,
      value: transaction.value.toStringAsFixed(2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Histórico',
            style: TextStyle(fontSize: 15, color: Colors.white)),
        const SizedBox(height: 10),
        Expanded(
            child: TeiaBuilder(
          on: (event) => true,
          builder: (context, allEvents, eventsChanged, eventsDeleted) =>
              ListView.builder(
                  itemBuilder: (context, index) =>
                      _buildCard(allEvents[index] as Transaction),
                  itemCount: allEvents.length),
        )),
      ]),
    );
  }
}
