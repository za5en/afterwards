import 'package:afterwards/view/widgets/a_menu_line.dart';
import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ANavigationDrawer extends StatelessWidget {
  const ANavigationDrawer({super.key});

  final int? currentRating = 141;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    var currentRoute = Get.currentRoute;

    List<Map> menu = [
      {
        'name': 'Календарь',
        'route': '/',
        'image': 'assets/images/calendar.svg',
        'off_image': 'assets/images/calendar-gray.svg',
      },
      {
        'name': 'Статистика',
        'route': '/stats',
        'image': 'assets/images/reports.svg',
        'off_image': 'assets/images/reports-gray.svg',
      },
      {
        'name': 'Параметры',
        'route': '/settings',
        'image': 'assets/images/settings.svg',
        'off_image': 'assets/images/settings-gray.svg',
      },
    ];

    List<int> ranges = [-750, -400, -150, 0, 150, 400, 750];
    List<String> names = [
      'firstLevel',
      'secondLevel',
      'thirdLevel',
      'fourthLevel',
      'fifthLevel',
      'sixthLevel',
      'seventhLevel',
    ];

    String findRating() {
      for (var i = 0; i < ranges.length; i++) {
        if (currentRating! < ranges[i]) {
          return names[i];
        }
      }
      return 'undefined';
    }

    return Center(
      child: SizedBox(
        width: w,
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          backgroundColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 46.5,
              horizontal: 10.5,
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ASvg(
                          assetName: 'assets/images/menu-button-selected.svg',
                          height: 35,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SizedBox(
                          height: menu.length * 45,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.symmetric(
                                      vertical: h * 0.02,
                                    ),
                                    itemCount: menu.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          AMenuLine(
                                            menu: menu[index],
                                            onTap:
                                                menu[index]['route'] !=
                                                        currentRoute
                                                    ? () {
                                                      Get.back();
                                                      if (currentRoute == '/') {
                                                        Get.toNamed(
                                                          menu[index]['route'],
                                                        );
                                                      } else {
                                                        if (menu[index]['route'] !=
                                                            '/') {
                                                          Get.offNamed(
                                                            menu[index]['route'],
                                                          );
                                                        } else {
                                                          Get.offAllNamed(
                                                            menu[index]['route'],
                                                          );
                                                        }
                                                      }
                                                    }
                                                    : () {},
                                          ),
                                          Visibility(
                                            visible: index < menu.length - 1,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: w * 0.04,
                                              ),
                                              child: Divider(
                                                thickness: 0.5,
                                                color:
                                                    theme.colorScheme.secondary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${findRating()} ($currentRating)',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
