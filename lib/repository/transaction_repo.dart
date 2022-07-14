import 'dart:convert';

import 'package:bloc_demo/controller/base_controller.dart';
import 'package:bloc_demo/model/TransactionModel.dart';
import 'package:bloc_demo/service/base_client.dart';
import 'package:bloc_demo/utils/url.dart';

class TransactionRepo extends BaseController {
  Future<TransactionModel> getTransactionFromApi() async {
    print("Function Call....");
    final response = await BaseClient()
        .get(MyUrl.baseUrl, "4572d649-fda0-4c84-991d-08ba0961205d")
        .catchError(handleError);

    var data = json.decode(response);

    TransactionModel? transactionModel = TransactionModel.fromJson(data);

    return transactionModel;
  }
}
