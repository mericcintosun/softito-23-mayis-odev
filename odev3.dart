import 'dart:io';

void main(List<String> args) {
  odev3();
}

void odev3() {
  List<int> sayilar = [];

  for (int i = 0; i < 5; i++) {
    stdout.write("${i + 1}. sayıyı girin: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }

  print("Girdiğiniz sayılar: $sayilar");

  // Tekrar kontrolü
  Map<int, int> tekrarlar = {};
  bool tekrarVar = false;

  for (int sayi in sayilar) {
    tekrarlar[sayi] = (tekrarlar[sayi] ?? 0) + 1;
    if (tekrarlar[sayi]! > 1) tekrarVar = true;
  }

  if (tekrarVar) {
    print("Tekrar girilen sayılar:");
    for (var entry in tekrarlar.entries) {
      if (entry.value > 1) {
        print("${entry.key} sayısı ${entry.value} kez girildi.");
      }
    }
  } else {
    print("Tüm sayılar farklı.");
  }

  int toplam = sayilar.reduce((a, b) => a + b);
  print("Sayıların toplamı: $toplam");
}
