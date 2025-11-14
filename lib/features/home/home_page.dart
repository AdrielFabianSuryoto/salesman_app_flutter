import 'package:flutter/material.dart';
import '../../core/widgets/app_sync_status_banner.dart';
import '../sync/sync_status_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: nanti binding ke state nyata (nama, statistik, status online)
    const isOnline = true;
    const pendingCount = 3;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            AppSyncStatusBanner(
              isOnline: isOnline,
              pendingCount: pendingCount,
              onTapDetail: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SyncStatusPage()),
                );
              },
            ),

            const SizedBox(height: 16),

            const Text(
              'Hi, Salesman',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Today: 4 visits | 6 transactions'),

            const SizedBox(height: 16),

            // Office Attendance Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Office Attendance',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Chip(
                          label: const Text('Belum Check-in'),
                          backgroundColor: Colors.red.shade50,
                          labelStyle: TextStyle(color: Colors.red.shade600),
                        ),
                        const SizedBox(width: 8),
                        Chip(
                          label: const Text('Outside Office Area'),
                          backgroundColor: Colors.orange.shade50,
                          labelStyle: TextStyle(color: Colors.orange.shade600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:
                            null, // disabled; nanti di-enable kalau geofence OK
                        child: const Text('Check-in'),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Anda berada di luar area kantor. Presensi kantor hanya dapat dilakukan di area yang ditentukan.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Quick Actions
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // TODO: navigate ke NewTransactionPage (bisa pakai shell FAB juga)
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('New Transaction'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // TODO: navigate ke daftar customer (Today route)
                    },
                    icon: const Icon(Icons.check_circle_outline),
                    label: const Text('Check-in Customer'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              'Today\'s Visits',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Customer ${index + 1}'),
                    subtitle: const Text('Some address, city'),
                    trailing: const Chip(
                      label: Text('Belum dikunjungi'),
                      visualDensity: VisualDensity.compact,
                    ),
                    onTap: () {
                      // TODO: navigate ke CustomerDetailPage
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
