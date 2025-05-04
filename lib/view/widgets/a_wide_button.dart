import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class AWideButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final String? assetName;
  const AWideButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02, vertical: h * 0.01),
      child: ElevatedButton(
        onPressed: onPressed,
        style: theme.elevatedButtonTheme.style?.copyWith(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
        child:
            assetName != null
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ASvg(assetName: assetName ?? ''),
                    Text(text, style: theme.textTheme.bodyLarge),
                  ],
                )
                : Text(text, style: theme.textTheme.bodyLarge),
      ),
    );
  }
}
