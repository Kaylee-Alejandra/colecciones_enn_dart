void main() {
  print("Kaylee Alejandra Luevano Molina mat: 22308051281248 gpo 6-J");
  Map<int, String> instrumentos = {
    1: "codigo", 
    2: "tipo", 
    3: "color",
    4: "marca",
    5: "precio",
    6: "nombre",
    7: "tamaño",
  };
  print("Mapa de instrumentos: ");
  print(instrumentos);

  print("Iterar un map con forEach");
  instrumentos.forEach((key, value) {
    print("$key, $value");
  });

  print("Iterar un map con for-in");
  for (var value in instrumentos.values) {
    print("$value");
  }

}