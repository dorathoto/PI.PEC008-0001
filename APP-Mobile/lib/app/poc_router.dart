import 'package:flutter/material.dart';

import '../presentation/pages/dashboard_page.dart';
import '../presentation/pages/intro_page.dart';

class PocRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case IntroPage.route:
        return MaterialPageRoute(builder: (_) => IntroPage());
      case DashboardPage.route:
        return MaterialPageRoute(builder: (_) => DashboardPage());
      default:
        return MaterialPageRoute(builder: (_) => IntroPage());
    }
  }
}
