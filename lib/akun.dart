import 'package:flutter/material.dart';

class MyAkun extends StatelessWidget {
  const MyAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Akun',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // === BAGIAN PROFIL ===
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Azka',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'AzkaGanteng@email.com',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Terverifikasi',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          '085608764779',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Terverifikasi',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ubah',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // === MENU ITEM 1: DAFTAR ALAMAT ===
          Container(
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.location_on_outlined,
                color: Colors.black54,
              ),
              title: const Text(
                'Daftar Alamat',
                style: TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black45,
              ),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 4),

          // === MENU ITEM 2: KETENTUAN LAYANAN ===
          Container(
            color: Colors.white,
            child: ListTile(
              leading: const Icon(
                Icons.description_outlined,
                color: Colors.black54,
              ),
              title: const Text(
                'Ketentuan Layanan',
                style: TextStyle(fontSize: 15),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black45,
              ),
              onTap: () {},
            ),
          ),

          const SizedBox(height: 20),

          // === INFORMASI TAMBAHAN ===
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Beri penilaian di Play Store',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                Text(
                  'Version 4.2.2 (196)',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // === TOMBOL KELUAR ===
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC400),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
