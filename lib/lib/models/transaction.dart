import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 0)
class Transaction extends HiveObject {
  @HiveField(0)
  final String type; // 'income_btc', 'income_rial', 'expense_device', 'expense_fixed', 'debt', 'receivable'

  @HiveField(1)
  final double amount;

  @HiveField(2)
  final String currency; // 'USD' or 'IRR'

  @HiveField(3)
  final String? cardName;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final String description;

  @HiveField(6)
  final DateTime date;

  Transaction({
    required this.type,
    required this.amount,
    required this.currency,
    this.cardName,
    required this.category,
    required this.description,
    required this.date,
  });
}
