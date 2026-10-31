import 'package:flutter/material.dart';
import '../models/payment.dart';

class SummaryCard extends StatelessWidget {
  final int total;
  final int count;

  const SummaryCard({
    super.key,
    required this.total,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.account_balance_wallet,
            size: 40,
            color: Colors.orange,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('total spent'),
              Text(
                formatIqd(total),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('$count payments'),
            ],
          ),
        ],
      ),
    );
  }
}