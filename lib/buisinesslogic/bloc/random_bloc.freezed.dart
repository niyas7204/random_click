// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRandomClick,
    required TResult Function(int count) startCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRandomClick,
    TResult? Function(int count)? startCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRandomClick,
    TResult Function(int count)? startCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onRandomClick value) onRandomClick,
    required TResult Function(startCounter value) startCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onRandomClick value)? onRandomClick,
    TResult? Function(startCounter value)? startCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onRandomClick value)? onRandomClick,
    TResult Function(startCounter value)? startCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomEventCopyWith<$Res> {
  factory $RandomEventCopyWith(
          RandomEvent value, $Res Function(RandomEvent) then) =
      _$RandomEventCopyWithImpl<$Res, RandomEvent>;
}

/// @nodoc
class _$RandomEventCopyWithImpl<$Res, $Val extends RandomEvent>
    implements $RandomEventCopyWith<$Res> {
  _$RandomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onRandomClickImplCopyWith<$Res> {
  factory _$$onRandomClickImplCopyWith(
          _$onRandomClickImpl value, $Res Function(_$onRandomClickImpl) then) =
      __$$onRandomClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onRandomClickImplCopyWithImpl<$Res>
    extends _$RandomEventCopyWithImpl<$Res, _$onRandomClickImpl>
    implements _$$onRandomClickImplCopyWith<$Res> {
  __$$onRandomClickImplCopyWithImpl(
      _$onRandomClickImpl _value, $Res Function(_$onRandomClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onRandomClickImpl implements onRandomClick {
  const _$onRandomClickImpl();

  @override
  String toString() {
    return 'RandomEvent.onRandomClick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onRandomClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRandomClick,
    required TResult Function(int count) startCounter,
  }) {
    return onRandomClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRandomClick,
    TResult? Function(int count)? startCounter,
  }) {
    return onRandomClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRandomClick,
    TResult Function(int count)? startCounter,
    required TResult orElse(),
  }) {
    if (onRandomClick != null) {
      return onRandomClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onRandomClick value) onRandomClick,
    required TResult Function(startCounter value) startCounter,
  }) {
    return onRandomClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onRandomClick value)? onRandomClick,
    TResult? Function(startCounter value)? startCounter,
  }) {
    return onRandomClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onRandomClick value)? onRandomClick,
    TResult Function(startCounter value)? startCounter,
    required TResult orElse(),
  }) {
    if (onRandomClick != null) {
      return onRandomClick(this);
    }
    return orElse();
  }
}

abstract class onRandomClick implements RandomEvent {
  const factory onRandomClick() = _$onRandomClickImpl;
}

/// @nodoc
abstract class _$$startCounterImplCopyWith<$Res> {
  factory _$$startCounterImplCopyWith(
          _$startCounterImpl value, $Res Function(_$startCounterImpl) then) =
      __$$startCounterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$startCounterImplCopyWithImpl<$Res>
    extends _$RandomEventCopyWithImpl<$Res, _$startCounterImpl>
    implements _$$startCounterImplCopyWith<$Res> {
  __$$startCounterImplCopyWithImpl(
      _$startCounterImpl _value, $Res Function(_$startCounterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$startCounterImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$startCounterImpl implements startCounter {
  const _$startCounterImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'RandomEvent.startCounter(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$startCounterImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$startCounterImplCopyWith<_$startCounterImpl> get copyWith =>
      __$$startCounterImplCopyWithImpl<_$startCounterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRandomClick,
    required TResult Function(int count) startCounter,
  }) {
    return startCounter(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onRandomClick,
    TResult? Function(int count)? startCounter,
  }) {
    return startCounter?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRandomClick,
    TResult Function(int count)? startCounter,
    required TResult orElse(),
  }) {
    if (startCounter != null) {
      return startCounter(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onRandomClick value) onRandomClick,
    required TResult Function(startCounter value) startCounter,
  }) {
    return startCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onRandomClick value)? onRandomClick,
    TResult? Function(startCounter value)? startCounter,
  }) {
    return startCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onRandomClick value)? onRandomClick,
    TResult Function(startCounter value)? startCounter,
    required TResult orElse(),
  }) {
    if (startCounter != null) {
      return startCounter(this);
    }
    return orElse();
  }
}

abstract class startCounter implements RandomEvent {
  const factory startCounter({required final int count}) = _$startCounterImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$startCounterImplCopyWith<_$startCounterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RandomState {
  int? get currenTime => throw _privateConstructorUsedError;
  int? get randomTime => throw _privateConstructorUsedError;
  int? get numberOfAttempt => throw _privateConstructorUsedError;
  int get timer => throw _privateConstructorUsedError;
  int? get numberOfSuccess => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomStateCopyWith<RandomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomStateCopyWith<$Res> {
  factory $RandomStateCopyWith(
          RandomState value, $Res Function(RandomState) then) =
      _$RandomStateCopyWithImpl<$Res, RandomState>;
  @useResult
  $Res call(
      {int? currenTime,
      int? randomTime,
      int? numberOfAttempt,
      int timer,
      int? numberOfSuccess,
      String? message,
      Result? result});
}

/// @nodoc
class _$RandomStateCopyWithImpl<$Res, $Val extends RandomState>
    implements $RandomStateCopyWith<$Res> {
  _$RandomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currenTime = freezed,
    Object? randomTime = freezed,
    Object? numberOfAttempt = freezed,
    Object? timer = null,
    Object? numberOfSuccess = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      currenTime: freezed == currenTime
          ? _value.currenTime
          : currenTime // ignore: cast_nullable_to_non_nullable
              as int?,
      randomTime: freezed == randomTime
          ? _value.randomTime
          : randomTime // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfAttempt: freezed == numberOfAttempt
          ? _value.numberOfAttempt
          : numberOfAttempt // ignore: cast_nullable_to_non_nullable
              as int?,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSuccess: freezed == numberOfSuccess
          ? _value.numberOfSuccess
          : numberOfSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$randomStateImplCopyWith<$Res>
    implements $RandomStateCopyWith<$Res> {
  factory _$$randomStateImplCopyWith(
          _$randomStateImpl value, $Res Function(_$randomStateImpl) then) =
      __$$randomStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currenTime,
      int? randomTime,
      int? numberOfAttempt,
      int timer,
      int? numberOfSuccess,
      String? message,
      Result? result});
}

/// @nodoc
class __$$randomStateImplCopyWithImpl<$Res>
    extends _$RandomStateCopyWithImpl<$Res, _$randomStateImpl>
    implements _$$randomStateImplCopyWith<$Res> {
  __$$randomStateImplCopyWithImpl(
      _$randomStateImpl _value, $Res Function(_$randomStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currenTime = freezed,
    Object? randomTime = freezed,
    Object? numberOfAttempt = freezed,
    Object? timer = null,
    Object? numberOfSuccess = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$randomStateImpl(
      currenTime: freezed == currenTime
          ? _value.currenTime
          : currenTime // ignore: cast_nullable_to_non_nullable
              as int?,
      randomTime: freezed == randomTime
          ? _value.randomTime
          : randomTime // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfAttempt: freezed == numberOfAttempt
          ? _value.numberOfAttempt
          : numberOfAttempt // ignore: cast_nullable_to_non_nullable
              as int?,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSuccess: freezed == numberOfSuccess
          ? _value.numberOfSuccess
          : numberOfSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc

class _$randomStateImpl implements randomState {
  const _$randomStateImpl(
      {required this.currenTime,
      required this.randomTime,
      required this.numberOfAttempt,
      required this.timer,
      required this.numberOfSuccess,
      required this.message,
      required this.result});

  @override
  final int? currenTime;
  @override
  final int? randomTime;
  @override
  final int? numberOfAttempt;
  @override
  final int timer;
  @override
  final int? numberOfSuccess;
  @override
  final String? message;
  @override
  final Result? result;

  @override
  String toString() {
    return 'RandomState(currenTime: $currenTime, randomTime: $randomTime, numberOfAttempt: $numberOfAttempt, timer: $timer, numberOfSuccess: $numberOfSuccess, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$randomStateImpl &&
            (identical(other.currenTime, currenTime) ||
                other.currenTime == currenTime) &&
            (identical(other.randomTime, randomTime) ||
                other.randomTime == randomTime) &&
            (identical(other.numberOfAttempt, numberOfAttempt) ||
                other.numberOfAttempt == numberOfAttempt) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.numberOfSuccess, numberOfSuccess) ||
                other.numberOfSuccess == numberOfSuccess) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currenTime, randomTime,
      numberOfAttempt, timer, numberOfSuccess, message, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$randomStateImplCopyWith<_$randomStateImpl> get copyWith =>
      __$$randomStateImplCopyWithImpl<_$randomStateImpl>(this, _$identity);
}

abstract class randomState implements RandomState {
  const factory randomState(
      {required final int? currenTime,
      required final int? randomTime,
      required final int? numberOfAttempt,
      required final int timer,
      required final int? numberOfSuccess,
      required final String? message,
      required final Result? result}) = _$randomStateImpl;

  @override
  int? get currenTime;
  @override
  int? get randomTime;
  @override
  int? get numberOfAttempt;
  @override
  int get timer;
  @override
  int? get numberOfSuccess;
  @override
  String? get message;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$randomStateImplCopyWith<_$randomStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
