import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:randomclick/data/data_model/resul_model.dart';
import 'package:randomclick/data/repsoitories/random_repo.dart';
import 'package:randomclick/data/implimentation/ramdom_implimentation.dart';
import 'package:randomclick/enums.dart';
import 'package:tuple/tuple.dart';

part 'random_event.dart';
part 'random_state.dart';
part 'random_bloc.freezed.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  final RandomRepo randomService;
  final DatabaseRepo databaseRepo;
  StreamSubscription<int>? counterSubscription;
  RandomBloc(this.randomService, this.databaseRepo)
      : super(RandomState.intial()) {
    counterSubscription = randomService.counterValue().listen((count) {
      add(RandomEvent.startCounter(count: count));
    });

    on<onRandomClick>((event, emit) async {
      final ResultModel value = randomService.onRandomClick();
      final Tuple2<int, int> respose =
          await databaseRepo.addResult(result: value.result);

      emit(state.copyWith(
          currenTime: value.current,
          randomTime: value.random,
          result: value.result,
          timer: 5,
          message: value.result == Result.success
              ? "Success :)"
              : "Sorry try Again!",
          numberOfAttempt: respose.item1,
          numberOfSuccess: respose.item2));
      counterSubscription?.cancel();
      counterSubscription = randomService.counterValue().listen((count) {
        add(RandomEvent.startCounter(count: count));
      });
    });
    on<startCounter>((event, emit) async {
      if (event.count == 0) {
        final Tuple2<int, int> respose =
            await databaseRepo.addResult(result: Result.failure);

        emit(state.copyWith(
            currenTime: null,
            randomTime: null,
            result: Result.failure,
            timer: 5,
            message:
                "Sorry! timeout and one attempt is considered for failure as penalty",
            numberOfAttempt: respose.item1,
            numberOfSuccess: respose.item2));
        counterSubscription?.cancel();
        counterSubscription = randomService.counterValue().listen((count) {
          add(RandomEvent.startCounter(count: count));
        });
      }
      emit(state.copyWith(timer: event.count));
    });
  }
}
