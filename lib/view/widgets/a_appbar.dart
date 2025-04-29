import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: SvgPicture.asset('assets/images/logo.svg'),
      leading: Padding(
        padding: EdgeInsets.all(10.0),
        child: Visibility(
          visible: true, // depending on settings
          child: InkWell(
            onTap: () {
              // open navigation drawer
            },
            child: SvgPicture.asset('assets/images/menu-button.svg'),
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
            child: SvgPicture.asset('assets/images/menu-button.svg'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
