part of 'random_bloc.dart';

@freezed
class RandomState with _$RandomState {
  const factory RandomState(
      {required int? currenTime,
      required int? randomTime,
      required int? numberOfAttempt,
      required int timer,
      required int? numberOfSuccess,
      required String? message,
      required Result? result}) = randomState;
  factory RandomState.intial() => const randomState(
      currenTime: null,
      timer: 0,
      randomTime: null,
      numberOfAttempt: null,
      numberOfSuccess: null,
      message: null,
      result: null);
}
