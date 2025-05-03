import 'package:flutter/material.dart';

class ASearchBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final double? size;
  final List<Widget>? actions;

  const ASearchBar({
    super.key,
    this.title,
    this.leading,
    this.size,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
      leading: leading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 70);
}
