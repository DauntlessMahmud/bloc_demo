import 'package:flutter/material.dart';

class DialogHelper {
  //show error dialog
  static void showErrorDialog(
      {String title = 'Error', String? description = 'Something went wrong'}) {
    /*Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              setCommonText("Error!", Colors.black, 20.0, FontWeight.w600, 1),
              setCommonText(
                  description ?? '', ColorMe.main, 16.0, FontWeight.w400, 1),
            ],
          ),
        ),
      ),
    );*/
  }

  //show loading
  static void showLoading([String? message]) {
    /*Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(message ?? 'Loading...'),
            ],
          ),
        ),
      ),
    );*/
  }

  static alartDialogue({String? title, Widget? confirmChild}) {
    /*Get.dialog(Dialog(
        child: Padding(
      padding: EdgeInsets.all(14.sp),
      child: Container(
        width: 250,
        //height: 120,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 2.0, color: ColorMe.main),
              )),
              child: setCommonText(
                  "Alert", ColorMe.black, 16.sp, FontWeight.w500, 1),
            ),
            AppSpaces.spaces_height_10,
            setCommonText(
                title.toString(), ColorMe.black, 18.0, FontWeight.w500, 1),
            AppSpaces.spaces_height_10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    //Get.back();
                  },
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: setCommonText(
                          'No', ColorMe.red, 15.0, FontWeight.w500, 1),
                    ),
                  ),
                ),
                AppSpaces.spaces_width_15,
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: confirmChild,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )));*/
  }

  //hide loading
  static void showResult(String result) {
    /* Get.dialog(
      Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              Text(result.toString()),
            ],
          ),
        ),
      ),
    );*/
  }

  static void hideLoading() {}
}
