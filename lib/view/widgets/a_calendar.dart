import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ACalendar extends StatefulWidget {
  const ACalendar({super.key});

  @override
  State<ACalendar> createState() => _ACalendarState();
}

class _ACalendarState extends State<ACalendar> {
  final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: now,
      firstDay: DateTime(now.year - 10, now.month, 1),
      lastDay:
          (now.month < 12)
              ? DateTime(now.year + 10, now.month + 1, 0)
              : DateTime(now.year + 11, 1, 0),
    );
  }
}
