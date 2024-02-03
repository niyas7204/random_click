part of 'random_bloc.dart';

@freezed
class RandomEvent with _$RandomEvent {
  const factory RandomEvent.onRandomClick() = onRandomClick;
  const factory RandomEvent.startCounter({required int count}) = startCounter;
}
