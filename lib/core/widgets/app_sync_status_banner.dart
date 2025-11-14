import 'package:flutter/material.dart';

class AppSyncStatusBanner extends StatelessWidget {
  final bool isOnline;
  final int pendingCount;
  final VoidCallback? onTapDetail;

  const AppSyncStatusBanner({
    super.key,
    this.isOnline = true,
    this.pendingCount = 0,
    this.onTapDetail,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = isOnline ? Colors.green.shade50 : Colors.red.shade50;
    final iconColor = isOnline ? Colors.green.shade700 : Colors.red.shade700;
    final textColor = isOnline ? Colors.green.shade800 : Colors.red.shade800;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            isOnline ? Icons.cloud_done : Icons.cloud_off,
            size: 18,
            color: iconColor,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              isOnline
                  ? 'Online • Pending sync: $pendingCount item(s)'
                  : 'Offline • Pending sync: $pendingCount item(s)',
              style: TextStyle(fontSize: 13, color: textColor),
            ),
          ),
          TextButton(
            onPressed: onTapDetail,
            child: const Text('Detail', style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
