import 'package:flutter/material.dart';

class AMenuSwitch extends StatefulWidget {
  const AMenuSwitch({super.key});

  @override
  State<AMenuSwitch> createState() => _AMenuSwitchState();
}

class _AMenuSwitchState extends State<AMenuSwitch> {
  var state = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List<String> menu = ['События', 'Опоздания'];

    return SizedBox(
      width: w,
      height: h * 0.055,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
        itemCount: menu.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap:
                state != index
                    ? () {
                      setState(() {
                        state = index;
                      });
                    }
                    : null,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: w * 0.48,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: h * 0.015),
                      child: Text(
                        menu[index],
                        style:
                            state != index
                                ? theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.textTheme.labelMedium?.color,
                                  fontSize: 16,
                                )
                                : theme.textTheme.bodyMedium?.copyWith(
                                  fontSize: 16,
                                ),
                      ),
                    ),
                    Divider(
                      thickness: 0.7,
                      height: 0,
                      color:
                          state != index
                              ? theme.colorScheme.onSecondary
                              : theme.colorScheme.secondary,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
