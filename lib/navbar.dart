import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'pesanan.dart';
import 'bantuan.dart';
import 'akun.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Dashboard2(),
    MyPesanan(),
    MyBantuan(),
    MyAkun(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(child: _pages[_selectedIndex]),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFFF4C400),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        elevation: 8,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? const Color(0xFFF4C400)
                  : Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long,
              color: _selectedIndex == 1
                  ? const Color(0xFFF4C400)
                  : Colors.grey,
            ),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_outline,
              color: _selectedIndex == 2
                  ? const Color(0xFFF4C400)
                  : Colors.grey,
            ),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: _selectedIndex == 3
                  ? const Color(0xFFF4C400)
                  : Colors.grey,
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
