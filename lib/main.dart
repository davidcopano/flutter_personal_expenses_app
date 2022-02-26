import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expenses_app/widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              child: Text('CHARTS!'),
            ),
          ),
          NewTransaction(),
          TransactionList(),
        ],
      ),
    );
  }
}
