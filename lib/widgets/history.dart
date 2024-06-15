import 'package:flutter/material.dart' hide Card;
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/widgets/editing_card.dart';
import 'package:flutter_template/widgets/transaction_card.dart';
import 'package:teia_dart/core/domain/teia.dart';
import 'package:teia_dart/utils/presentation/teia_builder.dart';

class History extends StatelessWidget {
  final Teia editingTransactions;
  const History({
    super.key,
    required this.editingTransactions,
  });
  Widget _buildCard(Transaction transaction) {
    return TransactionCard(
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
        TeiaBuilder(
          teiaInstance: editingTransactions,
          on: (event) => true,
          builder: (context, allEvents, eventsChanged, eventsDeleted) =>
              allEvents.isEmpty
                  ? const SizedBox()
                  : EditingCard(
                      editingTransactions: editingTransactions,
                    ),
        ),
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
