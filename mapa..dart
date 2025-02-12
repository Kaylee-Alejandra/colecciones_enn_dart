void main() {
  print("Kaylee Alejandra Luevano Molina mat: 22308051281248 gpo 6-J");
  Map<int, String> alumnos = {
    1: "Kaylee", 
    2: "Alejandra", 
    3: "Luevano"
  };
  print("Mapa de alumnos: ");
  print(alumnos);

  print("iterar un map con for each");
  alumnos.forEach((key, value) {
    print(" $key, $value");
  });

  print("iterar un map con for in");
  for (var value in alumnos.values) {
    print("$value");
  }
}