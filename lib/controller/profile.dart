import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_sandbox/view/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);

  // ログインしているUser名を表示する想定
  final String title;
  final Color primaryColor = const Color(0xff00AB66);
  
  @override
  State<ProfilePage> createState() => ProfilePageStateView();
}
