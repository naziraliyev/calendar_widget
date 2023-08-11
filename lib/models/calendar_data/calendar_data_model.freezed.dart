// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarDataModel _$CalendarDataModelFromJson(Map<String, dynamic> json) {
  return _CalendarDataModel.fromJson(json);
}

/// @nodoc
mixin _$CalendarDataModel {
  String? get month => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  List<Days>? get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDataModelCopyWith<CalendarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataModelCopyWith<$Res> {
  factory $CalendarDataModelCopyWith(
          CalendarDataModel value, $Res Function(CalendarDataModel) then) =
      _$CalendarDataModelCopyWithImpl<$Res, CalendarDataModel>;
  @useResult
  $Res call({String? month, int? year, List<Days>? days});
}

/// @nodoc
class _$CalendarDataModelCopyWithImpl<$Res, $Val extends CalendarDataModel>
    implements $CalendarDataModelCopyWith<$Res> {
  _$CalendarDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Days>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarDataModelCopyWith<$Res>
    implements $CalendarDataModelCopyWith<$Res> {
  factory _$$_CalendarDataModelCopyWith(_$_CalendarDataModel value,
          $Res Function(_$_CalendarDataModel) then) =
      __$$_CalendarDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? month, int? year, List<Days>? days});
}

/// @nodoc
class __$$_CalendarDataModelCopyWithImpl<$Res>
    extends _$CalendarDataModelCopyWithImpl<$Res, _$_CalendarDataModel>
    implements _$$_CalendarDataModelCopyWith<$Res> {
  __$$_CalendarDataModelCopyWithImpl(
      _$_CalendarDataModel _value, $Res Function(_$_CalendarDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
    Object? days = freezed,
  }) {
    return _then(_$_CalendarDataModel(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Days>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarDataModel implements _CalendarDataModel {
  const _$_CalendarDataModel({this.month, this.year, final List<Days>? days})
      : _days = days;

  factory _$_CalendarDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDataModelFromJson(json);

  @override
  final String? month;
  @override
  final int? year;
  final List<Days>? _days;
  @override
  List<Days>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CalendarDataModel(month: $month, year: $year, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarDataModel &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, month, year, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarDataModelCopyWith<_$_CalendarDataModel> get copyWith =>
      __$$_CalendarDataModelCopyWithImpl<_$_CalendarDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDataModelToJson(
      this,
    );
  }
}

abstract class _CalendarDataModel implements CalendarDataModel {
  const factory _CalendarDataModel(
      {final String? month,
      final int? year,
      final List<Days>? days}) = _$_CalendarDataModel;

  factory _CalendarDataModel.fromJson(Map<String, dynamic> json) =
      _$_CalendarDataModel.fromJson;

  @override
  String? get month;
  @override
  int? get year;
  @override
  List<Days>? get days;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDataModelCopyWith<_$_CalendarDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Days _$DaysFromJson(Map<String, dynamic> json) {
  return _Days.fromJson(json);
}

/// @nodoc
mixin _$Days {
  int? get day => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaysCopyWith<Days> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysCopyWith<$Res> {
  factory $DaysCopyWith(Days value, $Res Function(Days) then) =
      _$DaysCopyWithImpl<$Res, Days>;
  @useResult
  $Res call({int? day, int? type});
}

/// @nodoc
class _$DaysCopyWithImpl<$Res, $Val extends Days>
    implements $DaysCopyWith<$Res> {
  _$DaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DaysCopyWith<$Res> implements $DaysCopyWith<$Res> {
  factory _$$_DaysCopyWith(_$_Days value, $Res Function(_$_Days) then) =
      __$$_DaysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? day, int? type});
}

/// @nodoc
class __$$_DaysCopyWithImpl<$Res> extends _$DaysCopyWithImpl<$Res, _$_Days>
    implements _$$_DaysCopyWith<$Res> {
  __$$_DaysCopyWithImpl(_$_Days _value, $Res Function(_$_Days) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Days(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Days implements _Days {
  const _$_Days({this.day, this.type});

  factory _$_Days.fromJson(Map<String, dynamic> json) => _$$_DaysFromJson(json);

  @override
  final int? day;
  @override
  final int? type;

  @override
  String toString() {
    return 'Days(day: $day, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Days &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaysCopyWith<_$_Days> get copyWith =>
      __$$_DaysCopyWithImpl<_$_Days>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaysToJson(
      this,
    );
  }
}

abstract class _Days implements Days {
  const factory _Days({final int? day, final int? type}) = _$_Days;

  factory _Days.fromJson(Map<String, dynamic> json) = _$_Days.fromJson;

  @override
  int? get day;
  @override
  int? get type;
  @override
  @JsonKey(ignore: true)
  _$$_DaysCopyWith<_$_Days> get copyWith => throw _privateConstructorUsedError;
}
