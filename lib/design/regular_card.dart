import 'package:bloc_demo/utils/app_spacer.dart';
import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegularCardDesign extends StatefulWidget {
  const RegularCardDesign({Key? key}) : super(key: key);

  @override
  _RegularCardDesignState createState() => _RegularCardDesignState();
}

class _RegularCardDesignState extends State<RegularCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 1.sw,
        decoration: BoxDecoration(
            color: ColorMe.main,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("assets/cardBackground.png"),
                fit: BoxFit.cover),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [ColorMe.main, ColorMe.main, ColorMe.main2],
            )),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 1.sw,
              alignment: Alignment.centerLeft,
              child: setCommonText(
                  "Regular Card", Colors.white, 16.0, FontWeight.w500, 1),
            ),
            AppSpaces.spaces_height_40,
            Container(
              alignment: Alignment.center,
              width: 1.sw,
              child: setCommonText("3567 0070 0003 3256 2022", Colors.white,
                  16.0, FontWeight.w500, 1),
            ),
            AppSpaces.spaces_height_40,
            Container(
                alignment: Alignment.center,
                width: 1.sw,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: setCommonText(
                          "Softcent", Colors.white, 12.sp, FontWeight.w500, 1,
                          talign: TextAlign.start),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: setCommonText(
                          "Payback", Colors.white, 16.sp, FontWeight.w500, 1,
                          talign: TextAlign.end),
                    ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
