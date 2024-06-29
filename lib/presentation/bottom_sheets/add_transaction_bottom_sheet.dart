import 'package:flutter/material.dart';
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/presentation/bottom_sheets/base_bottom_sheet.dart';
import 'package:flutter_template/presentation/widgets/base_text_field.dart';
import 'package:flutter_template/presentation/widgets/button.dart';

Future<void> showAddTransaction(BuildContext context) => showBaseBottomSheet(
    context: context, child: const AddTransactionBottomSheetContent());

class AddTransactionBottomSheetContent extends StatefulWidget {
  const AddTransactionBottomSheetContent({super.key});

  @override
  State<AddTransactionBottomSheetContent> createState() =>
      _AddTransactionBottomSheetContentState();
}

class _AddTransactionBottomSheetContentState
    extends State<AddTransactionBottomSheetContent> {
  final transaction = Transaction(value: 0, description: '');

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: BaseTextField(
              onChanged: (text) {},
            ),
          ),
          SizedBox(
            width: 100,
            child: BaseTextField(
              onChanged: (text) {},
            ),
          )
        ],
      ),
      const SizedBox(height: 20),
      Button(
          text: 'Add',
          isPrimary: true,
          onPressed: () {
            Navigator.of(context).pop();
          })
    ]);
  }
}
