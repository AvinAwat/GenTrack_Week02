import 'package:flutter/material.dart';
import '../models/expenses.dart';

class ExpensesTile extends StatelessWidget {
  final Expense expense;

  const ExpensesTile({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(iconFor(expense.category)),
      ),
      title: Text(expense.title),
      subtitle: Text(expense.category),
      trailing: Text(
        formatIqd(expense.amount),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

IconData iconFor(String category) {
  switch (category) {
    case 'Food':
      return Icons.restaurant;
    case 'Transport':
      return Icons.directions_bus;
    case 'Bills':
      return Icons.receipt_long;
    case 'Fun':
      return Icons.celebration;
    case 'Health':
      return Icons.local_hospital;
    default:
      return Icons.payments;
  }
}