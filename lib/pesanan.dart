import 'package:flutter/material.dart';

class MyPesanan extends StatelessWidget {
  const MyPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pesananList = [
      {
        'nama': 'Wakwaw teknik',
        'tanggal': '26/04/2023 06:29',
        'deskripsi': '5758 teknik',
        'status': 'Menunggu Konfirmasi',
        'logo': 'assets/kimJongUn.jpg',
      },
      {
        'nama': 'Danini Teknik',
        'tanggal': '26/04/2023 06:29',
        'deskripsi': 'Danish Jaya Teknik',
        'status': 'Menunggu Konfirmasi',
        'logo': 'assets/leeMinHo.jpg',
      },
      {
        'nama': 'Free Kuota',
        'tanggal': '26/04/2023 06:25',
        'deskripsi': '',
        'status': 'Menunggu Konfirmasi',
        'logo': 'assets/jaehyun.png',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 223, 119),
        centerTitle: false,
        title: const Text(
          'Pesanan Dalam Proses',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list, color: Colors.black),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: pesananList.length,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          final pesanan = pesananList[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 235, 171),
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage(pesanan['logo']!),
                onBackgroundImageError: (_, __) {},
              ),
              title: Text(
                pesanan['nama']!,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2),
                  Text(
                    pesanan['tanggal']!,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  const SizedBox(height: 2),
                  if (pesanan['deskripsi']!.isNotEmpty)
                    Text(
                      pesanan['deskripsi']!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF007AFF),
                      ),
                    ),
                  const SizedBox(height: 4),
                  Text(
                    pesanan['status']!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFFFFA726),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
