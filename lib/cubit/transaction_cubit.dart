import 'package:FoodMarket/models/models.dart';
import 'package:FoodMarket/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  Future<void> getTransactions() async {
    ApiReturnValue<List<Transaction>> result =
        await TransactionServices.getTransaction();

    if (result.value != null) {
      emit(TransactionLoaded(result.value));
    } else {
      emit(TransactionLoadingFailed(result.message));
    }
  }

  Future<bool> submitTransaction(Transaction transaction) async {
    ApiReturnValue<Transaction> result =
        await TransactionServices.submitTransaction(transaction);
    if (result.value != null) {
      emit(TransactionLoaded(
          (state as TransactionLoaded).transactions + [result.value]));
      return true;
    } else {
      return false;
    }
  }
}
