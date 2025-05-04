import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

class ATaskBlock extends StatelessWidget {
  final bool isLate;
  final bool isImportant;
  final double? percent;
  // task info
  const ATaskBlock({
    super.key,
    required this.isLate,
    required this.isImportant,
    this.percent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateTime = DateTime.now().subtract(Duration(hours: 1));
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary,
          border: Border.all(
            color:
                !isLate && dateTime.isBefore(DateTime.now())
                    ? theme.colorScheme.error
                    : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: isLate ? 5.0 : 0.0,
                    top: isLate ? 5.0 : 0.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isLate
                          ? Row(
                            children: [
                              ASvg(assetName: 'assets/images/clock.svg'),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text('12:00'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 3.0,
                                ),
                                child: ASvg(
                                  assetName:
                                      'assets/images/clock-with-tick.svg',
                                ),
                              ),
                              Text('12:10'),
                            ],
                          )
                          : Row(
                            children: [
                              ASvg(assetName: 'assets/images/clock.svg'),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text('12:00'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                  right: 3.0,
                                ),
                                child: ASvg(
                                  assetName: 'assets/images/close-multiply.svg',
                                ),
                              ),
                              Text('1 минута'),
                            ],
                          ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Row(
                          children: [
                            Visibility(
                              visible: isImportant,
                              child: ASvg(
                                assetName: 'assets/images/important.svg',
                              ),
                            ),
                            Visibility(
                              visible: !isLate,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: ASvg(
                                    assetName: 'assets/images/confirm.svg',
                                    height: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: isLate ? 3.0 : 5.0),
                  child: Row(
                    children: [
                      ASvg(
                        assetName:
                            isLate
                                ? 'assets/images/close-multiply.svg'
                                : 'assets/images/honour.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text(isLate ? '10 минут' : 'Важная встреча'),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isLate,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        ASvg(assetName: 'assets/images/question-mark.svg'),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text('Поздно вышел'),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: isLate,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: w * 0.8,
                          height: h * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: theme.colorScheme.surfaceDim,
                          ),
                          child: OverflowBox(
                            maxWidth: w * 0.8,
                            minWidth: h * 0.03,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: w * 0.8 * (percent ?? 0 / 100),
                                  height: h * 0.03,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color:
                                        (percent ?? 1) < 33
                                            ? theme.colorScheme.error
                                            : (percent ?? 1) >= 33 &&
                                                (percent ?? 1) < 66
                                            ? theme.colorScheme.surfaceTint
                                            : theme.colorScheme.inverseSurface,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
