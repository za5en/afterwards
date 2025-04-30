import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class ANavigationDrawer extends StatelessWidget {
  const ANavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      backgroundColor: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  InkWell(
                    child: ASvg(
                      assetName: 'assets/images/menu-button.svg',
                      color: theme.colorScheme.secondary,
                      height: 35,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // Get.back();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
