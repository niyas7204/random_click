import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:randomclick/data/data_model/resul_model.dart';
import 'package:randomclick/data/data_model/score_model.dart';
import 'package:randomclick/data/repsoitories/random_repo.dart';
import 'package:randomclick/enums.dart';
import 'package:tuple/tuple.dart';

class DatabaseImplimentation implements DatabaseRepo {
  DatabaseImplimentation.init();
  static final DatabaseImplimentation instance = DatabaseImplimentation.init();
  Box<ScoreModel>? box;
  Future<Box<ScoreModel>> get intDb async {
    if (box != null) {
      return box!;
    } else {
      box = await initialize();
      return box!;
    }
  }

  @override
  Future<Box<ScoreModel>> initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ScoreModelAdapter());
    Hive.registerAdapter(ResultAdapter());
    return await Hive.openBox<ScoreModel>("score");
  }

  @override
  Future<Tuple2<int, int>> addResult({required Result result}) async {
    try {
      int attemptNumber = box!.length + 1;
      ScoreModel scoreModel =
          ScoreModel(attemptNumber: attemptNumber, status: result);
      box!.add(scoreModel);
      int count = 0;
      for (var score in box!.values) {
        if (score.status == Result.success) {
          count++;
        }
      }
      return Tuple2(attemptNumber, count);
    } catch (e) {
      log("ee $e");
    }
    int attemptNumber = box!.length + 1;
    ScoreModel scoreModel =
        ScoreModel(attemptNumber: attemptNumber, status: result);
    box!.add(scoreModel);
    int count = 0;
    for (var score in box!.values) {
      if (score.status == Result.success) {
        count++;
      }
    }
    log("att $attemptNumber");
    return Tuple2(attemptNumber, count);
  }

  @override
  ResultModel readResult() {
    // TODO: implement readResult
    throw UnimplementedError();
  }
}
