import 'package:hive_flutter/hive_flutter.dart';
part 'enums.g.dart';

@HiveType(typeId: 1)
enum Result {
  @HiveField(0)
  success,
  @HiveField(1)
  failure,
}
