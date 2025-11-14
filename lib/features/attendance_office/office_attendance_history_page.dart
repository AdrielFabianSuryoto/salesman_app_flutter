import 'package:flutter/material.dart';

class OfficeAttendanceHistoryPage extends StatelessWidget {
  const OfficeAttendanceHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Office Attendance History')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: const Text('14 Nov 2025'),
              subtitle: const Text(
                'Check-in: 08:12 (Inside Office)\nCheck-out: 17:03',
              ),
              isThreeLine: true,
              trailing: const Chip(
                label: Text('Synced'),
                visualDensity: VisualDensity.compact,
              ),
            ),
          );
        },
      ),
    );
  }
}
