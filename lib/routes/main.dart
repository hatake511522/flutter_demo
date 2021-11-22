import 'package:flutter/cupertino.dart';
import 'package:profile_sandbox/controller/map_home.dart';
import 'package:profile_sandbox/controller/profile.dart';

class Link {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Link({required this.name, required this.route, required this.builder});
}

final topLinks = [
  Link(
    name: 'MapHome',
    route: '/map_home',
    builder: (context) => MapHome(),
  ),
  Link(
    name: 'Profile',
    route: '/profile',
    builder: (context) => ProfilePage(title: 'TAIKI'),
  ),
];

