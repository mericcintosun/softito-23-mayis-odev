import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  odev1();
}

void odev1() {
  stdout.write("Başlangıç değeri: ");
  int baslangic = int.parse(stdin.readLineSync()!);
  stdout.write("Bitiş değeri: ");
  int bitis = int.parse(stdin.readLineSync()!);

  List<int> sayilar = [];
  Random random = Random();

  for (int i = 0; i < 5; i++) {
    int sayi = baslangic + random.nextInt(bitis - baslangic + 1);
    sayilar.add(sayi);
  }

  print("Tüm Sayılar: $sayilar");
  print("Tek Sayılar: ${sayilar.where((s) => s % 2 != 0).toList()}");
  print("Çift Sayılar: ${sayilar.where((s) => s % 2 == 0).toList()}");
}