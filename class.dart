class Kucing {
  String? name;
  int? age;

  void display() {
    print("Nama : $name");
    print("Umur : $age");
  }
}

void main(List<String> args) {
  Kucing kucing1 = Kucing();

  kucing1.name = "Meong";
  kucing1.age = 3;

  kucing1.display();

  print("Nama : ${kucing1.name}");
  print("Umur : ${kucing1.age}");
}
