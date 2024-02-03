import 'dart:async';
import 'dart:math';

import 'package:randomclick/data/data_model/resul_model.dart';
import 'package:randomclick/data/repsoitories/random_repo.dart';
import 'package:randomclick/enums.dart';

class RandomService implements RandomRepo {
  @override
  int getCurrentSecond() {
    DateTime currentTime = DateTime.now();
    return currentTime.second;
  }

  @override
  ResultModel onRandomClick() {
    DateTime currentTime = DateTime.now();
    int currentSecond = currentTime.second;
    Random random = Random();
    int randomNum = random.nextInt(60);

    if (randomNum == currentSecond) {
      return ResultModel(
          current: currentSecond, random: randomNum, result: Result.success);
    } else {
      return ResultModel(
          current: currentSecond, random: randomNum, result: Result.failure);
    }
  }

  @override
  Stream<int> counterValue() async* {
    int count = 0;
    await for (var _ in Stream.periodic(const Duration(seconds: 1))) {
      if (count > 0) {
        count--;
      } else {
        count = 4;
      }
      yield count;
    }
  }
}
