import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  child: SpinKitCubeGrid(
                    size: 120.r,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
