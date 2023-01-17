import 'package:bwa_airplane/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  final CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountTraveler': transaction.amountTraveler,
        'selectedSeats': transaction.selectedSeats,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      rethrow;
    }
  }
}
