class TransactionModel {
  TransactionModel({
    this.success,
    this.data,
  });

  TransactionModel.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? success;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    this.transactions,
  });

  Data.fromJson(dynamic json) {
    if (json['transactions'] != null) {
      transactions = [];
      json['transactions'].forEach((v) {
        transactions?.add(Transactions.fromJson(v));
      });
    }
  }

  List<Transactions>? transactions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (transactions != null) {
      map['transactions'] = transactions?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Transactions {
  Transactions(
      {this.transactionId,
      this.shopName,
      this.shopLogo,
      this.paymentType,
      this.timestamp,
      this.amountSend,
      this.amountRecieved,
      this.icon});

  Transactions.fromJson(dynamic json) {
    transactionId = json['transaction_id'];
    shopName = json['shop_name'];
    shopLogo = json['shop_logo'];
    paymentType = json['payment_type'];
    timestamp = json['timestamp'];
    amountSend = json['amount_send'];
    amountRecieved = json['amount_recieved'];

    if (paymentType == "Cash") {
      icon == "assets/icon/cash.png";
    } else {
      icon == "assets/icon/payment.png";
    }
  }

  String? transactionId;
  String? shopName;
  String? shopLogo;
  String? paymentType;
  String? timestamp;
  int? amountSend;
  int? amountRecieved;
  int? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['transaction_id'] = transactionId;
    map['shop_name'] = shopName;
    map['shop_logo'] = shopLogo;
    map['payment_type'] = paymentType;
    map['timestamp'] = timestamp;
    map['amount_send'] = amountSend;
    map['amount_recieved'] = amountRecieved;
    return map;
  }
}
