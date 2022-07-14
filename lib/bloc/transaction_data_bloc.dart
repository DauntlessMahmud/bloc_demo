import 'package:bloc/bloc.dart';
import 'package:bloc_demo/model/TransactionModel.dart';
import 'package:meta/meta.dart';

import '../repository/transaction_repo.dart';

part 'transaction_data_event.dart';
part 'transaction_data_state.dart';

class TransactionDataBloc
    extends Bloc<TransactionDataEvent, TransactionDataState> {
  final TransactionRepo transactionRepo;

  TransactionDataBloc(this.transactionRepo)
      : super(TransactionDataStateInitial()) {
    on<TransactionDataEvent>((event, emit) async {
      if (event is LoadTransactionDataEvent) {
        TransactionDataLoadingState();
        TransactionModel? apiResult =
            await transactionRepo.getTransactionFromApi();
        emit(TransactionDataLoadedState(apiResult));
      }
    });
  }
}
