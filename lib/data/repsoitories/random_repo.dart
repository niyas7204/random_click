import 'package:hive_flutter/hive_flutter.dart';
import 'package:randomclick/data/data_model/resul_model.dart';
import 'package:randomclick/data/data_model/score_model.dart';
import 'package:randomclick/enums.dart';
import 'package:tuple/tuple.dart';

abstract class RandomRepo {
  int getCurrentSecond();
  ResultModel onRandomClick();

  Stream<int> counterValue();
}

abstract class DatabaseRepo {
  Future<Box<ScoreModel>> initialize();
  Future<Tuple2<int, int>> addResult({required Result result});
  ResultModel readResult();
}
