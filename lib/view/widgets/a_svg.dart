import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ASvg extends StatelessWidget {
  final String assetName;
  final Color? color;
  final BlendMode? blendMode;
  final double? height;
  final double? width;

  const ASvg({
    super.key,
    required this.assetName,
    this.height,
    this.width,
    this.color,
    this.blendMode,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      colorFilter: ColorFilter.mode(
        color ?? Colors.black,
        blendMode ?? BlendMode.src,
      ),
      height: height,
      width: width,
    );
  }
}
