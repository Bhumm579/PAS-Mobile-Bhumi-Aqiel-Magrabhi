import 'package:flutter/material.dart';

import '../components/info_tile.dart';

const namaLengkap = 'Bhumi Aqiel Magrabhi';
const kelasAbsen = '11 PPLG 1 / No. Absen 08';
const bio = 'Hobi ngegame.';

const fotoProfil = '';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: CircleAvatar(
              radius: 56,
              backgroundColor: warna.primaryContainer,
              backgroundImage: fotoProfil.isEmpty
                  ? null
                  : NetworkImage(fotoProfil),
              child: fotoProfil.isEmpty
                  ? Icon(Icons.person, size: 56, color: warna.primary)
                  : null,
            ),
          ),
          const SizedBox(height: 16),
          const Card(
            child: Column(
              children: [
                InfoTile(
                  ikon: Icons.person,
                  label: 'Nama Lengkap',
                  isi: namaLengkap,
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.school,
                  label: 'Kelas / No. Absen',
                  isi: kelasAbsen,
                ),
                Divider(height: 1),
                InfoTile(ikon: Icons.info_outline, label: 'Bio', isi: bio),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
