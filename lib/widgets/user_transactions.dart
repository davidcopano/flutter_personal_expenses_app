import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/models/transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> _userTransactions = [];

  void _addTransaction(String title, String amount) {
    print('----------------------------');
    print('_addTransaction');
    print(title);
    print(amount);
    print('----------------------------');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          onAddTransaction: (title, amount) {
            _addTransaction(title, amount);
          },
        ),
        TransactionList(
          transactions: _userTransactions,
        ),
      ],
    );
  }
}
