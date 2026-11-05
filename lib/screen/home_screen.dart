import 'package:flutter/material.dart';
import 'package:gentrack_week02/models/payment.dart';
import 'package:gentrack_week02/widgets/payment_list.dart';
import 'package:gentrack_week02/widgets/summary_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GenTrack'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              debugPrint("Settings tapped");
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final card = SummaryCard(
            total: totalOf(samplePayments),
            count: samplePayments.length,
          );

          final list = PaymentList(payments: samplePayments);

          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                card,
                Expanded(child: list),
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 360, child: card),
              Expanded(child: list),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Add tapped');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}