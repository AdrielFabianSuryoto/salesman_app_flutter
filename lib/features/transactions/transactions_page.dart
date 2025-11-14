import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Customer ${index + 1}'),
              subtitle: const Text('12 Nov 2025 • CASH\nTotal: Rp 500.000'),
              isThreeLine: true,
              trailing: const Chip(
                label: Text('Pending'),
                visualDensity: VisualDensity.compact,
              ),
              onTap: () {
                // TODO: Transaction detail
              },
            ),
          );
        },
      ),
    );
  }
}
