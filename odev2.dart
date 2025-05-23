import 'dart:io';

void main(List<String> args) {
  odev2();
}

void odev2() {
  Set<int> sayilar = {};

  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}. sayıyı girin: ");
    sayilar.add(int.parse(stdin.readLineSync()!));
  }

  int toplam = sayilar.reduce((a, b) => a + b);
  print("Sayıların toplamı: $toplam");
}
