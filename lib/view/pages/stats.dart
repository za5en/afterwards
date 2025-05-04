import 'package:afterwards/view/widgets/a_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/a_svg.dart';
import '../widgets/navigation_drawer.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
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
      ),
      drawer: const ANavigationDrawer(),
      drawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Stack(children: [Center(child: Column(children: []))]),
      ),
    );
  }
}
