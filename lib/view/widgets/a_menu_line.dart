import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class AMenuLine extends StatelessWidget {
  final Map menu;
  const AMenuLine({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Row(children: [ASvg(assetName: menu['image']), Text(menu['name'])]);
  }
}
