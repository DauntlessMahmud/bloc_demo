import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatefulWidget {
  final String? appBarTitle;

  const MyAppBar({super.key, this.appBarTitle});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: Icon(
              Icons.add_circle_outlined,
              color: ColorMe.main,
              size: 35.r,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ],
      title: setCommonText(
          widget.appBarTitle!, Colors.black, 16.0, FontWeight.w500, 1),
      centerTitle: true,
    );
  }
}
