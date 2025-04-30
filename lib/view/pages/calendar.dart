import 'package:afterwards/view/widgets/a_appbar.dart';
import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:afterwards/view/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/a_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: ASvg(assetName: 'assets/images/logo.svg'),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Builder(
            builder: (context) {
              return Visibility(
                visible: true, // depending on settings
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: ASvg(assetName: 'assets/images/menu-button.svg'),
                ),
              );
            },
          ),
        ),
        actions: [
          Visibility(
            visible: false, // depending on settings
            child: InkWell(
              onTap: () {
                // open navigation drawer
              },
              child: ASvg(assetName: 'assets/images/menu-button.svg'),
            ),
          ),
        ],
      ),
      drawer: const ANavigationDrawer(),
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
