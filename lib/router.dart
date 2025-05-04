import 'package:flutter/material.dart';

import 'view/pages/calendar.dart';
import 'view/pages/settings.dart';
import 'view/pages/stats.dart';

class AfterwardsRouter {
  const AfterwardsRouter();

  Route onGenerateRoute(settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Calendar(),
        );
      // case '/':
      //   return Hive.box('settings').get('minVersion', defaultValue: true)
      //       ? MaterialPageRoute(
      //           settings: settings, builder: (_) => const MainScreen())
      //       : MaterialPageRoute(
      //           settings: settings, builder: (_) => const UpdateScreen());
      case '/settings':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Settings(),
        );
      case '/stats':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const Stats(),
        );
      // case '/welcome_screen':
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const WelcomeScreen());
      // case '/update_screen':
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const UpdateScreen());
      default:
        throw ErrorDescription('Unknown route name: ${settings.name}');
    }
  }
}
