import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_sandbox/controller/profile.dart';
import 'package:profile_sandbox/view/common.dart';

class ProfilePageStateView extends State<ProfilePage> {
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
                  child: LargeButton(title: "ALL 53 TRACKS", color: widget.primaryColor),
                )
              ],
            )
        )
    );
  }
}


class ProfileCard extends StatelessWidget {
  const ProfileCard({
    required this.color,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              TextButton(
                onPressed: (){
                  print("pressed share button");
                },
                child: const Text("SHARE"),
              )
            ],
          ),
        )
    );
  }
}