import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../customers/customers_page.dart';
import '../transactions/transactions_page.dart';
import '../attendance_office/office_attendance_history_page.dart';
import '../transactions/new_transaction_page.dart';

class MainShellPage extends StatefulWidget {
  static const routeName = '/main';

  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _currentIndex = 0;

  final _pages = const [
    HomePage(),
    CustomersPage(),
    TransactionsPage(),
    OfficeAttendanceHistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() => _currentIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.store_mall_directory_outlined),
            selectedIcon: Icon(Icons.store_mall_directory),
            label: 'Customers',
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            selectedIcon: Icon(Icons.receipt_long),
            label: 'Transactions',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time_outlined),
            selectedIcon: Icon(Icons.access_time_filled),
            label: 'Attendance',
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 2
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const NewTransactionPage()),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text('New Transaction'),
            )
          : null,
    );
  }
}
