import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/bottom_sheets/base_bottom_sheet.dart';

Future<void> showAddTransaction(BuildContext context) => showBaseBottomSheet(
    context: context, child: const AddTransactionBottomSheetContent());

class AddTransactionBottomSheetContent extends StatelessWidget {
  const AddTransactionBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
    );
  }
}
