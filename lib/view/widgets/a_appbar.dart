import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: ASvg(assetName: 'assets/images/logo.svg'),
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Visibility(
          visible: true, // depending on settings
          child: InkWell(
            onTap: () {
              // open navigation drawer
            },
            child: ASvg(assetName: 'assets/images/menu-button.svg'),
          ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
