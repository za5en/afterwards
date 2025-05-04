import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AMenuLine extends StatelessWidget {
  final Map menu;
  final Function() onTap;
  const AMenuLine({super.key, required this.menu, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    var currentRoute = Get.currentRoute;
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.04),
            child: ASvg(
              assetName:
                  menu['route'] == currentRoute
                      ? menu['off_image']
                      : menu['image'],
            ),
          ),
          Text(
            menu['name'],
            style:
                menu['route'] == currentRoute
                    ? theme.textTheme.labelMedium
                    : theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
