import 'package:flutter/material.dart';
import 'package:gentrack_week02/models/payment.dart';
import 'package:gentrack_week02/widgets/expenses_tile.dart';
import 'package:gentrack_week02/widgets/summary_card.dart';
import '../models/expenses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GenTrack'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              print("Settings tapped");
            },
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SummaryCard(
            total: totalOf(samplePayments),
            count: samplePayments.length,),

         Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'Recent Expenses',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
        onPressed: () {
          print('See all tapped');
        },
        child: const Text('See all'),
      ),
    ],
  ),
),
const SizedBox(height: 8,),

          Expanded(
            child: ListView(
              children: [
                for (final e in sampleExpenses)
                  ExpensesTile(expense: e),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add tapped');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}