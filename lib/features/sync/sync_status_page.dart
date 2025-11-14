import 'package:flutter/material.dart';

class SyncStatusPage extends StatelessWidget {
  const SyncStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sync Status')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 8,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: const Text('Transaction - Customer A'),
              subtitle: const Text('Created: 10:32 • Error: Network timeout'),
              trailing: const Chip(
                label: Text('Failed'),
                visualDensity: VisualDensity.compact,
              ),
              onTap: () {
                // TODO: open detail / retry single
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            // TODO: retry all
          },
          child: const Text('Retry All'),
        ),
      ),
    );
  }
}
