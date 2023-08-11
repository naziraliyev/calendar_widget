import 'package:calandar_widget/ui/pages/calendar_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green
      ),
      home: CalendarPage.route(),
    );
  }
}

