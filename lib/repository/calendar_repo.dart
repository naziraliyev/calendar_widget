




import 'package:calandar_widget/models/calendar_data/calendar_data_model.dart';
import 'package:calandar_widget/models/colorData/color_data_model.dart';
import 'package:calandar_widget/utils/network_utils/dio_network.dart';


class CalendarRepo{
  final  client = DioNetwork().dio;

  Future<CalendarDataModel> getCalendar()async {
    final res = await client.get('/b/ADYD');
    return CalendarDataModel.fromJson(res.data);
  }
  
   Future<List<ColorDataModel>> getColors()async {
    final res = await client.get('/b/N5M6');
    return res.data.map<ColorDataModel>((e){
      return ColorDataModel.fromJson(e);
    }).toList();
  }
}