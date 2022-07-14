import 'dart:async';

import 'package:bloc_demo/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(HOME, (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    super.initState();

    /*_checkVersion();*/

    /* SharedPreferences.getInstance().then((pr) {
      prefs = pr;
    });*/
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });

    startTime();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200.w,
          width: 200.w,
          decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/softcent.png",
                ),
              )),
        ),
      ),
    );
  }
}
