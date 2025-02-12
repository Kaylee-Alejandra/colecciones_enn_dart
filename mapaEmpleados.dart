void main() {
  print("Kaylee Alejandra Luevano Molina mat: 22308051281248 gpo 6-J");
  Map<int, String> Empleados = {
    1: "Id", 
    2: "nombre", 
    3: "direccion",
    4: "puesto",
    5: "sueldo",
    6: "telefono",
    7: "correo",
  };
  print("Mapa de instrumentos: ");
  print(Empleados);

  print("Iterar un map con forEach");
  Empleados.forEach((key, value) {
    print("$key, $value");
  });

  print("Iterar un map con for-in");
  for (var value in Empleados.values) {
    print("$value");
  }

}