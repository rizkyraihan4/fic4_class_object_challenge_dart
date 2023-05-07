import 'dart:io';

class Nasabah {
  String? nama;
  String? alamat;
  int? saldo;

  Nasabah({this.nama, this.alamat, this.saldo = 0});

  simpan(int? jumlah) {
    return saldo = saldo! + jumlah!;
  }

  ambil(int? jumlah) {
    return saldo = saldo! - jumlah!;
  }

  void totalSaldo() {
    print("Saldo Total $nama = $saldo");
  }

  void display() {
    print("Nama = $nama");
    print('Alamat = $alamat');
    print('Saldo = $saldo');
  }

  void updateSaldo() {
    print("Apakah anda ingin menyimpan uang anda ? (y/n)");
    String pilihSimpanSaldo = stdin.readLineSync()!;
    if (pilihSimpanSaldo == "y" || pilihSimpanSaldo == "Y") {
      print("Masukkan jumlah uang yang ingin disimpan : ");
      simpan(int.parse(stdin.readLineSync()!));
    }

    print("Apakah anda ingin mengambil uang anda ? (y/n)");
    String pilihTarikSaldo = stdin.readLineSync()!;
    if (pilihTarikSaldo == "y" || pilihTarikSaldo == "Y") {
      print("Masukkan jumlah uang yang ingin diambil : ");
      ambil(int.parse(stdin.readLineSync()!));
    }
    totalSaldo();
  }
}

void main(List<String> args) {
  Nasabah nasabah1 = Nasabah(nama: "Rizky", alamat: "Cikarang", saldo: 200000);

  nasabah1.display();
  nasabah1.updateSaldo();
  print("\n");
  print("========================================================");
  print("\n");

  Nasabah nasabah2 = Nasabah(nama: "Raihan", alamat: "Cikarang", saldo: 10000);
  nasabah2.display();
  nasabah2.updateSaldo();
}
