import 'dart:io';

import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:bloc_demo/utils/dialog_helper.dart';
import 'package:flutter/material.dart';

class AppTools {
  static Future<bool> showExitPopup() async {
    return await DialogHelper.alartDialogue(
            title: 'Are you sure to Exit?',
            confirmChild: InkWell(
              onTap: () {
                exit(0);
              },
              child:
                  setCommonText('Yes', ColorMe.main, 15.0, FontWeight.w500, 1),
            )) ??
        false;
  }
}
