


import 'package:calandar_widget/models/calendar_data/calendar_data_model.dart';

import 'package:calandar_widget/repository/calendar_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calandar_widget/models/colorData/color_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent,CalendarState>{
 final repo = CalendarRepo();
  CalendarBloc():super(const CalendarState()){
    on<GetCalendar>((event, emit) async{
      await _getCalendar(event,emit);
    });
    on<GetEnum>((event, emit) async{
     await _getEnum(event,emit);
    });
  }

  
   _getCalendar(GetCalendar event, Emitter<CalendarState> emit) async{
     List<Days> days = [];
    final res = await repo.getCalendar();
     final indexOfDay = DateTime(res.year ?? 2022, int.parse(res.month ?? '-1')).weekday;
     final monthCount = DateUtils.getDaysInMonth(res.year ?? 2022, int.parse(res.month ?? '-1'));

     for(int i=1; i<indexOfDay; i++){
      days.add(const Days(day: 0, type: null));
     }
     final daysLength = res.days?.length??0;
     for(int i =1; i <= monthCount; i++){
      int? type;
      for(int j=0; j < daysLength;j++){
          if(res.days?[j].day==i){
            type = res.days?[j].type??0;
          }
      }
      days.add(Days(day: i,type: type));
     }
     for(int i=daysLength; i <=35;i++){
      days.add(const Days(day: 0,type: null));
     }

     emit(state.copyWith(
       calendarData: CalendarDataModel(
        month: res.month,
        year: res.year,
        days: days
       ),),);
   }
   
      _getEnum(GetEnum event, Emitter<CalendarState> emit) async{
         final res = await repo.getColors();
      emit(state.copyWith(colors: res));
      add(GetCalendar(year: event.year, month: event.month));
      }



  
}