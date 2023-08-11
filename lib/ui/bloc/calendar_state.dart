


part of 'calendar_bloc.dart';

 @freezed
class CalendarState with _$CalendarState{

  const factory CalendarState({
    CalendarDataModel? calendarData,
    List<ColorDataModel>? colors,
    BaseState? state,
  })  = _CalendarState;

  const CalendarState._();

}

enum BaseState{loading,loaded,error}