


import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_data_model.freezed.dart';
part 'calendar_data_model.g.dart';


@freezed
abstract class CalendarDataModel with _$CalendarDataModel {
const factory CalendarDataModel({
    String? month,
    int? year,
   List<Days>? days,

}) = _CalendarDataModel;
factory CalendarDataModel.fromJson(Map<String, dynamic> json) => _$CalendarDataModelFromJson(json);

}

@freezed
class Days with _$Days {
  const factory Days({
     int? day,
     int?  type,

  }) = _Days;
  factory Days.fromJson(Map<String, dynamic> json) => _$DaysFromJson(json);

}