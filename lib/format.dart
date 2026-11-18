String rupiah(double nilai) {
  final teks = nilai.round().toString();
  final hasil = StringBuffer();

  for (int i = 0; i < teks.length; i++) {
    hasil.write(teks[i]);

    final sisa = teks.length - i - 1;
    if (sisa > 0 && sisa % 3 == 0) hasil.write('.');
  }

  return 'Rp $hasil';
}
