part of 'transaction_data_bloc.dart';

@immutable
abstract class TransactionDataState {}

class TransactionDataStateInitial extends TransactionDataState {}

class TransactionDataLoadingState extends TransactionDataState {}

class TransactionDataLoadedState extends TransactionDataState {
  final TransactionModel? apiResult;

  TransactionDataLoadedState(this.apiResult);
}

class TransactionDataErrorState extends TransactionDataState {}
