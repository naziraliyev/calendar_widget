// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarDataModel _$$_CalendarDataModelFromJson(Map<String, dynamic> json) =>
    _$_CalendarDataModel(
      month: json['month'] as String?,
      year: json['year'] as int?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => Days.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarDataModelToJson(
        _$_CalendarDataModel instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'days': instance.days,
    };

_$_Days _$$_DaysFromJson(Map<String, dynamic> json) => _$_Days(
      day: json['day'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_DaysToJson(_$_Days instance) => <String, dynamic>{
      'day': instance.day,
      'type': instance.type,
    };
