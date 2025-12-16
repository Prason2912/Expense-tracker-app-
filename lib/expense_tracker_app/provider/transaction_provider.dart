import 'package:flutter/material.dart';
import 'package:provider_app/expense_tracker_app/model/transaction.dart';

class TransactionProvider extends ChangeNotifier{
  final List<Transaction> _transactions =[];
  
  List<Transaction> get transaction => _transactions;
  // calculating total income
double get totalIncome => _transactions
    .where((tx) => tx.isIncome) // filtering the transaction checking its income or expense
    .fold(0,(sum,tx) => sum + tx.amount); // sum of transaction or total
// totalling the expenses
double get totalExpense => _transactions
.where((tx)=> !tx.isIncome) // checking whether transaction is income or expense
.fold(0,(sum,tx)=>sum+tx.amount);// totalling or suming the expenses

// for remaining balance
double get remainingBalance => totalIncome - totalExpense;

// method to add new transaction it can be income or expense
void addTransaction(String title,double amount,bool isIncome){
  final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
      isIncome: isIncome);
  _transactions.insert(0, newTransaction);
  notifyListeners();
  // delete method
}
  void removeTransaction(String id){
    _transactions.removeWhere((tx) => tx.id ==id);
    notifyListeners();
  }
 }