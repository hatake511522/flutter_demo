import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      // controller 実装後差し替え
      print("clicked large button");
    },
        style: ElevatedButton.styleFrom(
            primary: color,
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
            )
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
    );
  }
}
