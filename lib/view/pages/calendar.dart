import 'package:afterwards/view/widgets/a_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/a_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: Column(children: [ACalendar()])),
          ],
        ),
      ),
    );
  }
}
