class Expense {
  final String title;
  final int amount;
  final String category;
  final DateTime date;

  const Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  });
}

final List<Expense> sampleExpenses = [
  Expense(
    title: 'Lunch',
    amount: 10000,
    category: 'Food',
    date: DateTime(2026, 10, 28),
  ),
  Expense(
    title: 'Taxi',
    amount: 5000,
    category: 'Transport',
    date: DateTime(2026, 10, 27),
  ),
  Expense(
    title: 'Internet Bill',
    amount: 25000,
    category: 'Bills',
    date: DateTime(2026, 10, 26),
  ),
  Expense(
    title: 'Cinema',
    amount: 15000,
    category: 'Fun',
    date: DateTime(2026, 10, 25),
  ),
  Expense(
    title: 'Medicine',
    amount: 10000,
    category: 'Health',
    date: DateTime(2026, 10, 24),
  ),
];

String formatIqd(int amount) {
  final digits = amount.toString();
  final result = StringBuffer();

  for (int i = 0; i < digits.length; i++) {
    if (i > 0 && (digits.length - i) % 3 == 0) {
      result.write(',');
    }
    result.write(digits[i]);
  }

  return 'IQD ${result.toString()}';
}