import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Flutter web",
            style: TextStyle(fontWeight: FontWeight.w800, height: 0.9,fontSize: 80),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. The first version of Flutter was known as codename \"Sky\" and ran on the Android operating system.",
            style: TextStyle(fontSize: 18, height: 1.7),
          )
        ],
      ),
    );
  }
}
