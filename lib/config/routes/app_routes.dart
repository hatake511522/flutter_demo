import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:profile_sandbox/controller/profile.dart';
import 'package:profile_sandbox/main.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case '/':
        return _materialRoute(const HomePage());
      case '/profile':
        return _materialRoute(const ProfilePage(title: "taiki"));
        break;
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
