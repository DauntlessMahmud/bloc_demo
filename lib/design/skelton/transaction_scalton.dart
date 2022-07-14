import 'package:bloc_demo/utils/app_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_text/skeleton_text.dart';

class TransactionScelton extends StatefulWidget {
  const TransactionScelton({Key? key}) : super(key: key);

  @override
  State<TransactionScelton> createState() => _TransactionSceltonState();
}

class _TransactionSceltonState extends State<TransactionScelton> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SkeletonWidget();
        });
  }

  Widget SkeletonWidget() {
    return Padding(
      padding: EdgeInsets.all(5),
      child: SkeletonAnimation(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.black12)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1.sw,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 7.h,
                              width: 1.sw,
                              color: Colors.black12,
                            ),
                            AppSpaces.spaces_height_10,
                            Container(
                              height: 5.h,
                              width: 1.sw,
                              color: Colors.black12,
                            ),
                            AppSpaces.spaces_height_10,
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                    height: 5.h,
                                    width: 5.h,
                                    color: Colors.black12,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 5.h,
                                    width: 1.sw,
                                    color: Colors.black12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FittedBox(
                                child: Container(
                                  height: 7.h,
                                  width: 1.sw,
                                  color: Colors.black12,
                                ),
                              ),
                              AppSpaces.spaces_height_15,
                              Container(
                                height: 5.h,
                                width: 1.sw,
                                color: Colors.black12,
                              ),
                              AppSpaces.spaces_height_15,
                              Container(
                                height: 5.h,
                                width: 1.sw,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
