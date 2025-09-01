import 'dart:io';

void main() {
  // 1. Input data dari pengguna
  stdout.write("Masukkan nama karyawan: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan jumlah jam kerja dalam seminggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam (misalnya 25000): ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah status karyawan tetap? (y/n): ");
  String? statusInput = stdin.readLineSync();
  bool statusTetap = (statusInput?.toLowerCase() == 'y');

  // 2. Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // 3. Hitung pajak berdasarkan status
  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;

  // 4. Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // 5. Tampilkan hasil
  print("\n===== Slip Gaji Karyawan =====");
  print("Nama Karyawan : $nama");
  print("Status        : ${statusTetap ? 'Tetap' : 'Kontrak'}");
  print("Jam Kerja     : $jamKerja jam");
  print("Upah per Jam  : Rp ${upahPerJam.toStringAsFixed(0)}");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(0)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(0)}");
}
