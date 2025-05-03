import 'package:afterwards/view/pages/search.dart';
import 'package:afterwards/view/widgets/a_appbar.dart';
import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:afterwards/view/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../widgets/a_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AAppBar(
        title: ASvg(assetName: 'assets/images/logo.svg'),
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Builder(
            builder: (context) {
              return InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: ASvg(assetName: 'assets/images/menu-button.svg'),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {
                Get.to(Search());
              },
              child: ASvg(
                assetName: 'assets/images/search.svg',
                width: w * 0.1,
              ),
            ),
          ),
        ],
      ),
      drawer: const ANavigationDrawer(),
      drawerEnableOpenDragGesture: false,
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
