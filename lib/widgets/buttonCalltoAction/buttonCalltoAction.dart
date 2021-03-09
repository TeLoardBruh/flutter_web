import 'package:flutter/material.dart';

class ButtonCalltoAction extends StatelessWidget {
  final String title;
  ButtonCalltoAction(this.title);
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    if (s <= Size(500.0, MediaQuery.of(context).size.height)) {
      print("m");
      return Container(
        height: 60,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 229, 146),
          borderRadius: BorderRadius.circular(5),
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 229, 146),
          borderRadius: BorderRadius.circular(5),
        ),
      );
    }
  }
}
