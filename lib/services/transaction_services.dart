part of 'services.dart';

class TransactionServices {
  static Future<ApiReturnValue<List<Transaction>>> getTransaction() async {
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(value: mockTransactions);
  }

  static Future<ApiReturnValue<Transaction>> submitTransaction(
      Transaction transaction) async {
    await Future.delayed(Duration(seconds: 2));

    // return ApiReturnValue(message: "Transaksi gagal");
    return ApiReturnValue(
        value:
            transaction.copyWith(id: 123, status: TransactionStatus.pending));
  }
}
