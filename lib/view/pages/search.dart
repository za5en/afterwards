import 'package:afterwards/view/widgets/a_svg.dart';
import 'package:flutter/material.dart';

final TextEditingController _controller = TextEditingController();

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: h * 0.01),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.02),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          onTapOutside:
                              (event) => FocusScope.of(context).unfocus(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: theme.colorScheme.primary,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            labelText: 'Поиск',
                            fillColor: theme.colorScheme.onPrimary,
                            labelStyle: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 18.0,
                            ),
                            filled: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: ASvg(
                                  assetName: 'assets/images/search.svg',
                                ),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  _controller.clear();
                                },
                                child: ASvg(
                                  assetName: 'assets/images/close-multiply.svg',
                                ),
                              ),
                            ),
                          ),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
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
