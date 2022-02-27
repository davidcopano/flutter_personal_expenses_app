import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/models/transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'tx1',
      title: 'Test 1',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx2',
      title: 'Test 2',
      amount: 13.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx3',
      title: 'Test 3',
      amount: 14.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx4',
      title: 'Test 4',
      amount: 15.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx5',
      title: 'Test 5',
      amount: 16.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx6',
      title: 'Test 6',
      amount: 17.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx7',
      title: 'Test 7',
      amount: 18.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx8',
      title: 'Test 8',
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    int transactionsLength = _userTransactions.length;
    final newTransaction = Transaction(
      id: 'tx$transactionsLength',
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
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
