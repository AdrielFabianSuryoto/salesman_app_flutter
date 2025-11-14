import 'package:flutter/material.dart';
import 'customer_detail_page.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: search
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Customer ${index + 1}'),
              subtitle: const Text(
                'Last visit: 10 Nov 2025\nOutstanding: Rp 1.250.000',
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CustomerDetailPage()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
