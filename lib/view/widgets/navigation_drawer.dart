import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class ANavigationDrawer extends StatelessWidget {
  const ANavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return Center(
      child: Container(
        height: h * 0.3,
        // child: Column(
        //   children: [
        //     InkWell(
        //       customBorder: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: ASvg(
        //         assetName: 'assets/images/menu-button-selected.svg',
        //         height: 35,
        //       ),
        //       onTap: () {
        //         Navigator.pop(context);
        //         // Get.back();
        //       },
        //     ),
        child: Container(
          width: w * 0.95,
          child: Drawer(
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            backgroundColor: theme.colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [const SizedBox(height: 30)],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
