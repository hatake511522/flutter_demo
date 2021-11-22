import 'package:flutter/material.dart';
import 'package:profile_sandbox/controller/profile.dart';
import 'package:profile_sandbox/controller/map_home.dart';

void main() {
  runApp(const MyApp());
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Map.fromEntries(topLinks.map((d) => MapEntry(d.route, d.builder))),
      home: const HomePage(),
      // home: const ProfilePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: ListView(
        children: [...topLinks.map((d) => LinkTile(link: d))],
      )
    );
  }
}

class LinkTile extends StatelessWidget {
  final Link? link;

  const LinkTile({this.link, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(link!.name),
      onTap: () {
        Navigator.pushNamed(context, link!.route);
      },
    );
  }
}

class Link {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Link({required this.name, required this.route, required this.builder});
}