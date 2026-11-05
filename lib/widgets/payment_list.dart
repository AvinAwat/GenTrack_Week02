import 'package:flutter/material.dart';
import '../models/payment.dart';


class PaymentList extends StatelessWidget{
final List<Payment> payments;
IconData _iconForCategory(String category) {
  switch (category) {
    case 'Generator':
      return Icons.power;
    case 'Mains':
      return Icons.bolt;
    case 'Fuel':
      return Icons.local_gas_station;
    case 'Repairs':
      return Icons.build;
    default:
      return Icons.receipt;
  }
}

Color _colorForCategory(BuildContext context, String category) {
  final colors = Theme.of(context).colorScheme;

  switch (category) {
    case 'Generator':
      return colors.primaryContainer;
    case 'Mains':
      return colors.secondaryContainer;
    case 'Fuel':
      return colors.tertiaryContainer;
    case 'Repairs':
      return colors.surfaceContainerHighest;
    default:
      return colors.primaryContainer;
  }
}

const PaymentList({
  super.key,
  required this.payments,
});
@override
Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: payments.length,
    itemBuilder: (context, index) {
      final payment = payments[index];

      return ListTile(
        leading: CircleAvatar(
  backgroundColor: _colorForCategory(context, payment.category),
  child: Icon(
    _iconForCategory(payment.category),
    color: Theme.of(context).colorScheme.onSurface,
    size: 18,
  ),
),
        title: Text(payment.title),
        subtitle: Text(
          '${payment.category} • ${payment.date.day}/${payment.date.month}/${payment.date.year}',
        ),
        trailing: Text(formatIqd(payment.amount)),
      );
    },
  );
}
}