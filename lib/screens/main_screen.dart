import 'package:flutter/material.dart' hide Card;
import 'package:flutter_template/entities/transaction.dart';
import 'package:flutter_template/teia_builder.dart';
import 'package:flutter_template/widgets/card.dart';
import 'package:flutter_template/widgets/main_balance.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _buildCard(Transaction transaction) {
    return Card(
      description: transaction.description,
      value: transaction.value.toStringAsFixed(2),
    );
  }

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
            ],
          ),
        ),
      ),
      floatingActionButton: IconButton(
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () {},
        iconSize: 50,
        splashRadius: 30,
      ),
    );
  }
}
