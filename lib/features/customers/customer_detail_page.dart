import 'package:flutter/material.dart';

class CustomerDetailPage extends StatelessWidget {
  const CustomerDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: terima parameter customerId via constructor
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Customer Name'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Transactions'),
              Tab(text: 'Visits'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Header + status
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text('Some complete address, city'),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      const Chip(
                        label: Text('Distance: 150 m'),
                        visualDensity: VisualDensity.compact,
                      ),
                      Chip(
                        label: const Text('Inside Customer Area'),
                        backgroundColor: Colors.green.shade50,
                        labelStyle: TextStyle(color: Colors.green.shade700),
                        visualDensity: VisualDensity.compact,
                      ),
                      Chip(
                        label: const Text('Office Attendance: Belum'),
                        backgroundColor: Colors.red.shade50,
                        labelStyle: TextStyle(color: Colors.red.shade700),
                        visualDensity: VisualDensity.compact,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null, // nanti di-enable jika syarat terpenuhi
                      child: const Text('Check-in Visit'),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Anda belum melakukan presensi kantor hari ini. '
                    'Lakukan check-in di kantor sebelum presensi kunjungan.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Divider(height: 0),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Info tab (TODO)')),
                  Center(child: Text('Transactions tab (TODO)')),
                  Center(child: Text('Visits tab (TODO)')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
