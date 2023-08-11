part of 'calendar_bloc.dart';

abstract class CalendarEvent {}

class GetEnum extends CalendarEvent {
  int month;
  int year;

  GetEnum({
    required this.month,
    required this.year,
  });
}

class GetCalendar extends CalendarEvent {
  int month;
  int year;

  GetCalendar({
    required this.month,
    required this.year,
  });
}