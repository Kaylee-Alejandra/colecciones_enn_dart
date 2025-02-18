import 'dart:io';

// Clase Empleado
class Empleado {
  int id_empleado;
  String apaterno;
  String amaterno;
  String email;

  // Constructor
  Empleado(this.id_empleado, this.apaterno, this.amaterno, this.email);

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print("Ingrese el ID del empleado:");
    id_empleado = int.parse(stdin.readLineSync()!);

    print("Ingrese el apellido paterno:");
    apaterno = stdin.readLineSync()!;

    print("Ingrese el apellido materno:");
    amaterno = stdin.readLineSync()!;

    print("Ingrese el email:");
    email = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\nDatos del empleado:");
    print("ID: $id_empleado");
    print("Apellido Paterno: $apaterno");
    print("Apellido Materno: $amaterno");
    print("Email: $email");
  }
}

// Clase Pedro que hereda de Empleado
class Pedro extends Empleado {
  // Constructor
  Pedro(int id_empleado, String apaterno, String amaterno, String email)
      : super(id_empleado, apaterno, amaterno, email);

  // Función específica de Pedro
  void mostrarDatosPedro() {
    print("\nDatos de Pedro:");
    mostrarDatos(); // Llama a la función de la clase base
  }
}

void main() {
  // Crear una instancia de Empleado
  Empleado empleado = Empleado(0, "", "", "");
  empleado.capturarDatos(); // Capturar datos desde la consola
  empleado.mostrarDatos(); // Mostrar los datos capturados

  // Crear una instancia de Pedro
  Pedro pedro = Pedro(0, "", "", "");
  print("Kaylee Alejandra Luevano Molina mat: 22308051281248 gpo 6-J");
  print("informacion tabla 1");
  pedro.capturarDatos(); // Capturar datos para Pedro
  pedro.mostrarDatosPedro(); 
  print("informacion tabla 2"); // Mostrar datos de Pedro
}