import 'package:flutter/material.dart';
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/presentation/widgets/base_card.dart';
import 'package:teia_dart/core/domain/teia.dart';
import 'package:teia_dart/utils/presentation/teia_builder.dart';

class EditingCard extends StatelessWidget {
  final Teia editingTransactions;
  const EditingCard({
    super.key,
    required this.editingTransactions,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
        child: TeiaBuilder(
      teiaInstance: editingTransactions,
      on: (event) => true,
      builder: (context, allEvents, eventsChanged, eventsDeleted) {
        final editingTransaction = (allEvents.first as Transaction);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton(
                value: editingTransaction.description.isEmpty
                    ? null
                    : editingTransaction.description,
                items: const [
                  DropdownMenuItem(value: 'add', child: Text('Mercado')),
                  DropdownMenuItem(value: 'remove', child: Text('Remover')),
                ],
                onChanged: (value) {
                  editingTransaction.description = value.toString();
                  editingTransactions.update();
                }),
            SizedBox(
              width: 40,
              child: TextField(
                onChanged: (value) {
                  editingTransaction.value = double.parse(value);
                  editingTransactions.update();
                },
              ),
            )
          ],
        );
      },
    ));
  }
}
