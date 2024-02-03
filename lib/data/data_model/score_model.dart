import 'package:hive_flutter/hive_flutter.dart';
import 'package:randomclick/enums.dart';
part 'score_model.g.dart';

@HiveType(typeId: 0)
class ScoreModel {
  @HiveField(0)
  int attemptNumber;
  @HiveField(1)
  Result status;
  ScoreModel({
    required this.attemptNumber,
    required this.status,
  });
}
