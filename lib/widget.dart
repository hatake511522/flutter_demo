
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformWidget extends StatelessWidget {
  const PlatformWidget({
    Key? key,
    required this.androidBuilder,
    required this.iosBuilder,
  }) : super(key: key);

  final WidgetBuilder androidBuilder;
  final WidgetBuilder iosBuilder;

  @override
  Widget build(context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return androidBuilder(context);
      case TargetPlatform.iOS:
        return iosBuilder(context);
      default:
        assert(false, 'Unexpected platform $defaultTargetPlatform');
        return const SizedBox.shrink();
    }
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
                const Text("NAKAMURA TAIKI",
                  style: TextStyle(
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