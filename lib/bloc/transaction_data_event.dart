part of 'transaction_data_bloc.dart';

@immutable
abstract class TransactionDataEvent {}

class LoadTransactionDataEvent extends TransactionDataEvent {}
