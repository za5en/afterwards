import 'package:afterwards/view/widgets/a_menu_line.dart';
import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class ANavigationDrawer extends StatelessWidget {
  const ANavigationDrawer({super.key});

  final int? currentRating = 141;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);

    List<Map> menu = [
      {
        'name': 'Календарь',
        'page': 'calendar',
        'image': 'assets/images/calendar.svg',
        'off_image': 'assets/images/calendar-gray.svg',
      },
      {
        'name': 'Статистика',
        'page': 'stats',
        'image': 'assets/images/reports.svg',
        'off_image': 'assets/images/reports-gray.svg',
      },
      {
        'name': 'Параметры',
        'page': 'settings',
        'image': 'assets/images/settings.svg',
        'off_image': 'assets/images/settings-gray.svg',
      },
    ];

    List<int> ranges = [0, 150, 300, 500, 700, 1000];
    List<String> names = [
      'firstLevel',
      'secondLevel',
      'thirdLevel',
      'fourthLevel',
      'fifthLevel',
      'sixthLevel',
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
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Expanded(
                              child: ListView.builder(
                                itemCount: menu.length,
                                prototypeItem: AMenuLine(menu: menu.first),
                                itemBuilder: (context, index) {
                                  return AMenuLine(menu: menu[index]);
                                },
                              ),
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
                            child: Text(findRating()),
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
