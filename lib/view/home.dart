import 'package:bloc_demo/bloc/transaction_data_bloc.dart';
import 'package:bloc_demo/design/regular_card.dart';
import 'package:bloc_demo/design/skelton/transaction_scalton.dart';
import 'package:bloc_demo/design/transaction_card.dart';
import 'package:bloc_demo/model/TransactionModel.dart';
import 'package:bloc_demo/service/app_tools.dart';
import 'package:bloc_demo/utils/color_me.dart';
import 'package:bloc_demo/utils/common_widget.dart';
import 'package:bloc_demo/utils/utils_app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../design/bottom_navigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: AppTools.showExitPopup,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: const MyAppBar(appBarTitle: 'Card'),
        ),
        body: BlocBuilder<TransactionDataBloc, TransactionDataState>(
            builder: (context, state) {
          if (state is TransactionDataStateInitial) {
            context.read<TransactionDataBloc>().add(LoadTransactionDataEvent());
            return TransactionScelton();
          } else if (state is TransactionDataLoadingState) {
            return TransactionScelton();
          } else if (state is TransactionDataLoadedState) {
            return transactionBuildData(state.apiResult);
          } else if (state is TransactionDataErrorState) {
            return Center(child: Text("Something went wrong"));
          }
          return Center(child: Text("Error"));
        }),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          child: BottomNavigation(),
        ),
        floatingActionButton: Container(
          height: 50.h,
          width: 50.h,
          child: FittedBox(
            child: FloatingActionButton(
              clipBehavior: Clip.antiAlias,
              onPressed: () {},
              backgroundColor: ColorMe.main,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/icon/center_icon.png"),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget transactionBuildData(TransactionModel? transactionModel) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      child: ListView(
        children: [
          RegularCardDesign(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 1.sw,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  setCommonText("Recent Transaction", Colors.black, 16.sp,
                      FontWeight.w500, 1),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: transactionModel!.data!.transactions!.length,
                      itemBuilder: (context, index) {
                        return TransactionCard(
                          title: transactionModel
                              .data!.transactions![index].shopName,
                          transactionId: transactionModel
                              .data!.transactions![index].transactionId,
                          payment: transactionModel
                              .data!.transactions![index].paymentType,
                          image: transactionModel
                              .data!.transactions![index].shopLogo,
                          time: transactionModel
                              .data!.transactions![index].timestamp,
                          receiveMoney: transactionModel
                              .data!.transactions![index].amountSend
                              .toString(),
                          sendMoney: transactionModel
                              .data!.transactions![index].amountRecieved
                              .toString(),
                          paymentIcon: transactionModel
                              .data!.transactions![index].icon
                              .toString(),
                        );
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
