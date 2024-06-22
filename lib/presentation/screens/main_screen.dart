import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/bottom_sheets/add_transaction_bottom_sheet.dart';
import 'package:flutter_template/presentation/widgets/history.dart';
import 'package:flutter_template/presentation/widgets/main_balance.dart';
import 'package:teia_dart/core/domain/teia.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final editingTransactions = Teia();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1822),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainBalance(value: 453),
              const SizedBox(height: 50),
              History(
                editingTransactions: editingTransactions,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showAddTransaction(context);
        },
        iconSize: 50,
        splashRadius: 30,
      ),
    );
  }
}
