import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/icon/home.png"),
                    setCommonText("Home", Colors.grey, 12.r, FontWeight.w300, 2)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/icon/offer.png"),
                    setCommonText(
                        "Offer", Colors.grey, 12.r, FontWeight.w300, 2)
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 20.w,
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/icon/card.png"),
                    setCommonText(
                        "Card", ColorMe.main, 12.r, FontWeight.w300, 2)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.perm_identity_sharp,
                      color: Colors.black26,
                    ),
                    setCommonText(
                        "Account", Colors.grey, 12.r, FontWeight.w300, 2)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
