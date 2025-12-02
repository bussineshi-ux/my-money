import 'package:hive/hive.dart';

part 'bank_card.g.dart';

@HiveType(typeId: 1)
class BankCard extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  double usdBalance;

  @HiveField(2)
  double rialBalance;

  BankCard({
    required this.name,
    this.usdBalance = 0.0,
    this.rialBalance = 0.0,
  });
}
