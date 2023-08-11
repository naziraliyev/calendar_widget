


part of 'calendar_bloc.dart';

 @freezed
class CalendarState with _$CalendarState{

  const factory CalendarState({
    CalendarDataModel? calendarData,
    List<ColorDataModel>? colors,
  })  = _CalendarState;

  const CalendarState._();

}

