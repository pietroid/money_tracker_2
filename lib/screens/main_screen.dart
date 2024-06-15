import 'package:flutter/material.dart';
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/widgets/history.dart';
import 'package:flutter_template/widgets/main_balance.dart';
import 'package:provider/provider.dart';
import 'package:teia_dart/domain/teia.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1822),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBalance(value: 453),
              SizedBox(height: 50),
              History(),
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () {
          context
              .read<Teia>()
              .add(Transaction(value: 10, description: 'Teste'));
        },
        iconSize: 50,
        splashRadius: 30,
      ),
    );
  }
}
