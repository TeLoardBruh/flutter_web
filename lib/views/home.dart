import 'package:flutter/material.dart';
import 'package:playground/widgets/buttonCalltoAction/buttonCalltoAction.dart';
import 'package:playground/widgets/container/container.dart';
import 'package:playground/widgets/container/deviceType.dart';
import 'package:playground/widgets/navbar/navbar.dart';
import 'package:playground/widgets/welcomeText/welcomeText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeviceType(
      desktoptablet: _DesktopTab(),
      tablet: _Tablet(),
      // moblie: _Moblie(),
    );
    // var s = MediaQuery.of(context).size;
    // // print(s);
    // if (s <= Size(768.0, 711.0)) {
    //   print("something here");
    //   return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: ContainerView(
    //       child: Column(
    //         children: [
    //           NavBar(),
    //           Expanded(
    //               child: Column(
    //             children: [
    //               WelcomeText(),
    //               Expanded(
    //                   child: Center(
    //                 child: ButtonCalltoAction('Start Now!'),
    //               ))
    //             ],
    //           ))
    //         ],
    //       ),
    //     ),
    //   );
    // } else {
    //   return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: ContainerView(
    //       child: Column(
    //         children: [
    //           NavBar(),
    //           Expanded(
    //               child: Row(
    //             children: [
    //               WelcomeText(),
    //               Expanded(
    //                   child: Center(
    //                 child: ButtonCalltoAction('Start Now!'),
    //               ))
    //             ],
    //           ))
    //         ],
    //       ),
    //     ),
    //   );
    // }
  }
}

class _Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContainerView(
        child: Column(
          children: [
            NavBar(),
            Expanded(
                child: Column(
              children: [
                WelcomeText(),
                Expanded(
                    child: Center(
                  child: ButtonCalltoAction('Start m!'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class _DesktopTab  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContainerView(
        child: Column(
          children: [
            NavBar(),
            Expanded(
                child: Row(
              children: [
                WelcomeText(),
                Expanded(
                    child: Center(
                  child: ButtonCalltoAction('Start d!'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
