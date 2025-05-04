import 'package:afterwards/view/pages/search.dart';
import 'package:afterwards/view/widgets/a_appbar.dart';
import 'package:afterwards/view/widgets/a_menu_switch.dart';
import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:afterwards/view/widgets/a_task_block.dart';
import 'package:afterwards/view/widgets/a_wide_button.dart';
import 'package:afterwards/view/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../widgets/a_calendar.dart';

bool isLate = false;

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    List<String> tasks = ['1', '2', '3'];
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
                Get.to(() => Search());
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
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    ACalendar(),
                    AMenuSwitch(),
                    AWideButton(
                      onPressed: () {},
                      text: 'Добавить событие',
                      assetName: 'assets/images/plus.svg',
                    ),
                    SizedBox(
                      height: isLate ? tasks.length * 150 : tasks.length * 90,
                      child: Expanded(
                        child: ListView.builder(
                          itemCount: tasks.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ATaskBlock(
                                isLate: isLate,
                                isImportant: true,
                                // percent: 68,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
