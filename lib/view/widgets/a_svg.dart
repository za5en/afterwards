import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ASvg extends StatelessWidget {
  final String assetName;
  final double? height;
  final double? width;
  final ColorFilter? colorFilter;

  const ASvg({
    super.key,
    required this.assetName,
    this.height,
    this.width,
    this.colorFilter,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      colorFilter: colorFilter,
      height: height,
      width: width,
    );
  }
}
