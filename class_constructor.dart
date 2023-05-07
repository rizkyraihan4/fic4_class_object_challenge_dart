/*
*?      1. Buatlah sebuah class bernama Mahasiswa dengan atribut 
*?      nama, jurusan, dan angkatan.
*?
*?      2. Buatlah constructor default pada class Mahasiswa.
*?
*?      3. Buatlah constructor parameterized pada class Mahasiswa 
*?      dengan parameter nama, jurusan, dan angkatan.
*?
*?      4. Buatlah constructor named pada class Mahasiswa dengan 
*?      nama fromJson yang menerima parameter jsonString dan 
*?      mengembalikan objek Mahasiswa yang diinisialisasi 
*?      dengan nilai atribut dari jsonString.
*/

import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  String? angkatan;

  Mahasiswa() {
    print("Ini adalah default constructor Class Mahasiswa");
  }

  ConstructorParameterizedMahasiswa(String nama, String jurusan, int angkatan) {
    this.nama = nama;
    this.jurusan = jurusan;
    this.angkatan = angkatan as String?;
  }

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }

  Mahasiswa.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main(List<String> args) {
  Mahasiswa defaultConstructorMahasiswa = Mahasiswa();
  defaultConstructorMahasiswa;

  var jsonString1 =
      '{"nama": "JoKo","jurusan": "Informatika", "angkatan": "2021"}';

  var jsonString2 =
      '{"nama": "Eko","jurusan": "Informatika", "angkatan": "2021"}';

  Mahasiswa mahasiswaFromJson = Mahasiswa.fromJson(jsonDecode(jsonString1));
  print(mahasiswaFromJson.nama);
  print(mahasiswaFromJson.jurusan);
  print(mahasiswaFromJson.angkatan);

  print("\n");

  Mahasiswa mhs2 = Mahasiswa.fromJsonString(jsonString2);
  print("Nama = ${mhs2.nama}");
  print("Jurusan = ${mhs2.jurusan}");
  print("Angkatan = ${mhs2.angkatan}");
}
