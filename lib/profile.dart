import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_sandbox/widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final Color primaryColor = const Color(0xff00AB66);
  
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: widget.primaryColor,
        ),
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 600,
                  child: ProfileCard(name: "hoge", color: widget.primaryColor),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: allTracksButton(),
                )
              ],
            )
        )
    );
  }

  Widget allTracksButton() =>
      ElevatedButton(
          onPressed: () {
            print("clicked allTracksButton()");
          },
          style: ElevatedButton.styleFrom(
            primary: widget.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
            )
          ),
          child: const Text(
            "ALL 43 TRACKS",
            style: TextStyle(color: Colors.white),
          )
      );
}