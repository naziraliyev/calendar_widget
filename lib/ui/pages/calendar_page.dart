





import 'package:calandar_widget/ui/bloc/calendar_bloc.dart';
import 'package:calandar_widget/ui/widgets/calendar_widget.dart';
import 'package:calandar_widget/ui/widgets/week_day_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarPage extends StatefulWidget{
  const CalendarPage({super.key});

  @override
  State<StatefulWidget> createState()  => _CalendarPageState();

  static Widget route() {
    return BlocProvider(
      create: (context) =>
          CalendarBloc()..add(GetEnum(month: DateTime.now().month, year: 2022)),
      child:  const CalendarPage(),
    );
  }
}

class _CalendarPageState  extends State<CalendarPage>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("My Calendar",
      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      centerTitle: true,
    ),
    body: _buildBody(context),
   );
  }

  
  _buildBody(BuildContext context) {
    return BlocBuilder<CalendarBloc,CalendarState>(
      builder: (context,state) {
        final isLoading = state.state == BaseState.loading;
        return isLoading
        ?const Center(child: CircularProgressIndicator.adaptive(),)
        : Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children:   [
            const SizedBox(height: 38,),
            Row(
              children: [
                 Text(
                  "${state.calendarData?.year.toString() ?? ''} - yil, ",
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                  ),

             Text(
                 "${state.calendarData?.month.toString() ?? ''} - kun",
                   style: const TextStyle(fontSize: 24, color: Colors.black),
                  ),
              ],
            ),

            const SizedBox(height: 24,),
            WeekDayWidget(),
            const SizedBox(height: 38,),
            ...Iterable.generate(5).map<Widget>((weekItem){
              return Padding(padding: const EdgeInsets.only(bottom: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: Iterable.generate(7).map((daysItem){
                  String day = state.calendarData?.days?[weekItem*7+daysItem].day==0
                  ?''
                  : (state.calendarData?.days?[weekItem*7+daysItem].day??-1).toString();
                  return GestureDetector(
                    onTap: () {
                      if(state.calendarData?.days?[weekItem*7+daysItem].type==null){
                        return;
                      }
                     
                    },
                   child: DaysWidget(
                    day: day, 
                   color: fromHex(getColor(state, state.calendarData?.days?[weekItem*7+daysItem].type)??"#FFFFFF"),
                    weekDay: daysItem, 
                    onPressed: (String day) { 
                       if(state.calendarData?.days?[weekItem*7+daysItem].type==null){
                        return;
                      }
                       showDialog(context: context, builder: (_){
                        return _buildDialogItem(context,state,weekItem,daysItem,day);
                      });
                     },),
                    
                  );
                }).toList()
              ) ,
              );
            })
          ],
        ),);
      }
    );
  }

    String? getColor(CalendarState state, int? type) {
    String? color;
    if (type == null) return color;
    state.colors?.forEach((element) {
      if (element.type == type) {
        color = element.color;
      }
    });
    return color;
  }

  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return hexString=="#FFFFFF"?Colors.transparent:Color(int.parse(buffer.toString(), radix: 16));
  }
  
  _buildDialogItem(BuildContext context, CalendarState state, weekItem, daysItem, String day) {
    final data = DateTime(
                 state.calendarData?.year??2020,
                 int.parse(state.calendarData?.month??'01'),
                 int.parse(day)
                );
    return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                 padding: const EdgeInsets.all(8),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color:fromHex(getColor(state, state.calendarData?.days?[weekItem*7+daysItem].type)??"#FFFFFF"),
                 ),
                 height: 100,
                 child: RichText(text: TextSpan(
                   text: "Selected Color type => ${state.calendarData?.days?[weekItem * 7 + daysItem].type}\n",
                   style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),
                  children: [
                      TextSpan(
                        text: "Selected Date => ${DateFormat.yMMMMEEEEd().format(data)}.",
                         style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),
                      )
                  ]),
                  ),
                )
            ],
          );
  }
}