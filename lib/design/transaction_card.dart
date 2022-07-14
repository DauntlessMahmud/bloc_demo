import 'package:bloc_demo/design/CustomDialog.dart';
import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionCard extends StatefulWidget {
  final String? title;
  final String? transactionId;
  final String? payment;
  final String? image;
  final String? time;
  final String? date;
  final String? sendMoney;
  final String? receiveMoney;
  final String? paymentIcon;

  const TransactionCard(
      {Key? key,
      this.title,
      this.transactionId,
      this.payment,
      this.image,
      this.time,
      this.date,
      this.sendMoney,
      this.receiveMoney,
      this.paymentIcon})
      : super(key: key);

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: widget.image.toString(),
                        placeholder: (context, url) => CustomDialog(),
                        errorWidget: (context, url, error) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset("assets/weatherLogo.png"),
                        ),
                      ),
                    ),
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
                          setCommonText(widget.title!, Colors.black, 14.sp,
                              FontWeight.w500, 2),
                          setCommonText("Trans ID : ${widget.transactionId}",
                              Colors.grey, 14.sp, FontWeight.w300, 1),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Image.asset("assets/icon/payment.png"),
                              ),
                              Expanded(
                                child: setCommonText("${widget.payment}",
                                    Colors.grey, 14.sp, FontWeight.w300, 1),
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
                              child: setCommonText("${widget.time}",
                                  Colors.black, 8.sp, FontWeight.w200, 2),
                            ),
                            setCommonText("-৳${widget.sendMoney}", Colors.red,
                                14.sp, FontWeight.w400, 1,
                                talign: TextAlign.end),
                            setCommonText("-৳${widget.receiveMoney}",
                                ColorMe.main, 14.sp, FontWeight.w400, 1,
                                talign: TextAlign.end),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
