// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  CalendarDataModel? get calendarData => throw _privateConstructorUsedError;
  List<ColorDataModel>? get colors => throw _privateConstructorUsedError;
  BaseState? get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {CalendarDataModel? calendarData,
      List<ColorDataModel>? colors,
      BaseState? state});

  $CalendarDataModelCopyWith<$Res>? get calendarData;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarData = freezed,
    Object? colors = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      calendarData: freezed == calendarData
          ? _value.calendarData
          : calendarData // ignore: cast_nullable_to_non_nullable
              as CalendarDataModel?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorDataModel>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarDataModelCopyWith<$Res>? get calendarData {
    if (_value.calendarData == null) {
      return null;
    }

    return $CalendarDataModelCopyWith<$Res>(_value.calendarData!, (value) {
      return _then(_value.copyWith(calendarData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_CalendarStateCopyWith(
          _$_CalendarState value, $Res Function(_$_CalendarState) then) =
      __$$_CalendarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CalendarDataModel? calendarData,
      List<ColorDataModel>? colors,
      BaseState? state});

  @override
  $CalendarDataModelCopyWith<$Res>? get calendarData;
}

/// @nodoc
class __$$_CalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$_CalendarState>
    implements _$$_CalendarStateCopyWith<$Res> {
  __$$_CalendarStateCopyWithImpl(
      _$_CalendarState _value, $Res Function(_$_CalendarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarData = freezed,
    Object? colors = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_CalendarState(
      calendarData: freezed == calendarData
          ? _value.calendarData
          : calendarData // ignore: cast_nullable_to_non_nullable
              as CalendarDataModel?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorDataModel>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState?,
    ));
  }
}

/// @nodoc

class _$_CalendarState extends _CalendarState {
  const _$_CalendarState(
      {this.calendarData, final List<ColorDataModel>? colors, this.state})
      : _colors = colors,
        super._();

  @override
  final CalendarDataModel? calendarData;
  final List<ColorDataModel>? _colors;
  @override
  List<ColorDataModel>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BaseState? state;

  @override
  String toString() {
    return 'CalendarState(calendarData: $calendarData, colors: $colors, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarState &&
            (identical(other.calendarData, calendarData) ||
                other.calendarData == calendarData) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarData,
      const DeepCollectionEquality().hash(_colors), state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      __$$_CalendarStateCopyWithImpl<_$_CalendarState>(this, _$identity);
}

abstract class _CalendarState extends CalendarState {
  const factory _CalendarState(
      {final CalendarDataModel? calendarData,
      final List<ColorDataModel>? colors,
      final BaseState? state}) = _$_CalendarState;
  const _CalendarState._() : super._();

  @override
  CalendarDataModel? get calendarData;
  @override
  List<ColorDataModel>? get colors;
  @override
  BaseState? get state;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
