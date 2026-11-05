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
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            Icons.account_balance_wallet,
            size: 40,
            color: colors.onPrimaryContainer,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total paid',
                  style: text.bodyMedium?.copyWith(
                    color: colors.onPrimaryContainer,
                  ),
                ),
                Text(
                  formatIqd(total),
                  style: text.headlineMedium?.copyWith(
                    color: colors.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$count payments',
                  style: text.bodySmall?.copyWith(
                    color: colors.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}