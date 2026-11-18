class Makanan {
  final String nama;
  final double harga;
  final String deskripsi;
  final String gambar;

  const Makanan({
    required this.nama,
    required this.harga,
    required this.deskripsi,
    this.gambar = '',
  });
}

const List<Makanan> daftarMakanan = [
  Makanan(
    nama: 'Nasi Goreng Spesial',
    harga: 25000,
    deskripsi: 'Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.',
  ),
  Makanan(
    nama: 'Ayam Bakar Madu',
    harga: 30000,
    deskripsi: 'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
  ),
  Makanan(
    nama: 'Sate Ayam Madura',
    harga: 28000,
    deskripsi:
        '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
  ),
  Makanan(
    nama: 'Mie Ayam Bakso',
    harga: 20000,
    deskripsi: 'Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.',
  ),
  Makanan(
    nama: 'Es Teh Manis Jumbo',
    harga: 8000,
    deskripsi: 'Minuman teh melati segar dengan gula asli dan es batu kristal.',
  ),
];
