import 'package:afterwards/router.dart';
import 'package:afterwards/view/pages/settings.dart';
import 'package:afterwards/view/resources/color_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.systemLocale = await findSystemLocale();
  await initializeDateFormatting();

  runApp(const AfterwardsApp());
}

class AfterwardsApp extends StatefulWidget {
  const AfterwardsApp({super.key});

  @override
  State<AfterwardsApp> createState() => _AfterwardsAppState();
}

class _AfterwardsAppState extends State<AfterwardsApp> {
  final _router = const AfterwardsRouter();
  final initialRoute = '/';
  final theme = ColorThemes.main;
  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<Object>(
    //   stream: themeColor.stream,
    //   builder: (context, snapshot) {
    return StreamBuilder<Object>(
      stream: themeColor.stream,
      builder: (context, snapshot) {
        return GetMaterialApp(
          onGenerateRoute: _router.onGenerateRoute,
          debugShowCheckedModeBanner: false,
          initialRoute: initialRoute,
          theme:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? theme.dark
                  : theme.light,
        );
      },
    );
    //   },
    // );
  }
}
