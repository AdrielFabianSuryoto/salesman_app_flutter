import 'package:flutter/material.dart';

class NewTransactionPage extends StatelessWidget {
  const NewTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: lengkapi form transaksi (customer, items, payment)
    return Scaffold(
      appBar: AppBar(title: const Text('New Transaction')),
      body: const Center(child: Text('Form transaksi akan dibuat di sini')),
    );
  }
}
