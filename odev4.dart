import 'dart:io';

void main(List<String> args) {
  odev4();
}

void odev4() {
  List<Map<String, dynamic>> arabalar = [];

  while (true) {
    stdout.write("Marka (çıkmak için q): ");
    String? marka = stdin.readLineSync();
    if (marka == 'q') break;

    stdout.write("Model: ");
    String? model = stdin.readLineSync();

    stdout.write("Yıl: ");
    int yil = int.parse(stdin.readLineSync()!);

    stdout.write("KM: ");
    int km = int.parse(stdin.readLineSync()!);

    arabalar.add({"marka": marka, "model": model, "yil": yil, "km": km});
  }

  stdout.write("Filtreleme türü (marka/model/yil/km): ");
  String? secim = stdin.readLineSync();

  Map<dynamic, List<Map<String, dynamic>>> gruplar = {};

  for (var araba in arabalar) {
    var deger = araba[secim];
    if (!gruplar.containsKey(deger)) {
      gruplar[deger] = [];
    }
    gruplar[deger]!.add(araba);
  }

  print("\nSeçtiğiniz '$secim' değerine göre gruplanmış araçlar:\n");

  for (var entry in gruplar.entries) {
    print("Değer: ${entry.key}");
    for (var araba in entry.value) {
      print("  -> $araba");
    }
    print("");
  }
}
