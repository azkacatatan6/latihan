import 'package:flutter/material.dart';

class MyBantuan extends StatelessWidget {
  const MyBantuan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Selamat Datang di Halaman Bantuan!',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Color.fromARGB(255, 255, 230, 0),
        ),
      ),
    );
  }
}
