import 'dart:io';

// Clase Instrumentos
class Instrumentos {
  int codigo;
  String tipo;
  String color;
  String marca;
  double precio;
  String nombre;
  String tamano;

  // Constructor
  Instrumentos(this.codigo, this.tipo, this.color, this.marca, this.precio, this.nombre, this.tamano);

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print("\n=== Captura de datos del instrumento ===");
    print("Ingrese el código del instrumento:");
    codigo = int.parse(stdin.readLineSync()!);

    print("Ingrese el tipo de instrumento:");
    tipo = stdin.readLineSync()!;

    print("Ingrese el color del instrumento:");
    color = stdin.readLineSync()!;

    print("Ingrese la marca del instrumento:");
    marca = stdin.readLineSync()!;

    print("Ingrese el precio del instrumento:");
    precio = double.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del instrumento:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el tamaño del instrumento:");
    tamano = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\n=== Datos del instrumento ===");
    print("Código: $codigo");
    print("Tipo: $tipo");
    print("Color: $color");
    print("Marca: $marca");
    print("Precio: \$${precio.toStringAsFixed(2)}");
    print("Nombre: $nombre");
    print("Tamaño: $tamano");
    print("==============================");
  }
}

// Clase GuitarraFender que hereda de Instrumentos
class GuitarraFender extends Instrumentos {
  // Constructor
  GuitarraFender(int codigo, String tipo, String color, String marca, double precio, String nombre, String tamano)
      : super(codigo, tipo, color, marca, precio, nombre, tamano);

  // Función específica para mostrar datos de la guitarra Fender
  void mostrarDatosGuitarra() {
    print("\n=== Datos de la guitarra Fender ===");
    mostrarDatos(); // Llama a la función de la clase base
  }
}

// Clase Proveedores
class Proveedores {
  int id;
  String transporte;
  String contacto;
  String telefono;
  String correo;
  String llegada;
  String salida;

  // Constructor
  Proveedores(this.id, this.transporte, this.contacto, this.telefono, this.correo, this.llegada, this.salida);

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print("\n=== Captura de datos del proveedor ===");
    print("Ingrese el ID del proveedor:");
    id = int.parse(stdin.readLineSync()!);

    print("Ingrese el tipo de transporte:");
    transporte = stdin.readLineSync()!;

    print("Ingrese el nombre del contacto:");
    contacto = stdin.readLineSync()!;

    print("Ingrese el teléfono del contacto:");
    telefono = stdin.readLineSync()!;

    print("Ingrese el correo del contacto:");
    correo = stdin.readLineSync()!;

    print("Ingrese la hora de llegada:");
    llegada = stdin.readLineSync()!;

    print("Ingrese la hora de salida:");
    salida = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\n=== Datos del proveedor ===");
    print("ID: $id");
    print("Transporte: $transporte");
    print("Contacto: $contacto");
    print("Teléfono: $telefono");
    print("Correo: $correo");
    print("Llegada: $llegada");
    print("Salida: $salida");
    print("============================");
  }
}

// Clase Prov1 que hereda de Proveedores
class Prov1 extends Proveedores {
  // Constructor
  Prov1(int id, String transporte, String contacto, String telefono, String correo, String llegada, String salida)
      : super(id, transporte, contacto, telefono, correo, llegada, salida);

  // Función específica para mostrar datos de Prov1
  void mostrarDatosProv1() {
    print("\n=== Datos del proveedor (Prov1 - Camión) ===");
    mostrarDatos(); // Llama a la función de la clase base
  }
}

void main() {
  // Crear una instancia de Instrumentos
  Instrumentos instrumento = Instrumentos(0, "", "", "", 0.0, "", "");
  instrumento.capturarDatos(); // Capturar datos desde la consola
  instrumento.mostrarDatos(); // Mostrar los datos capturados

  // Crear una instancia de GuitarraFender
  GuitarraFender guitarra = GuitarraFender(0, "", "", "", 0.0, "", "");
  guitarra.capturarDatos(); // Capturar datos para la guitarra Fender
  guitarra.mostrarDatosGuitarra(); // Mostrar datos de la guitarra Fender

  // Crear una instancia de Proveedores
  Proveedores proveedor = Proveedores(0, "", "", "", "", "", "");
  proveedor.capturarDatos(); // Capturar datos desde la consola
  proveedor.mostrarDatos(); // Mostrar los datos capturados

  // Crear una instancia de Prov1
  Prov1 prov1 = Prov1(0, "", "", "", "", "", "");
  prov1.capturarDatos(); // Capturar datos para Prov1
  prov1.mostrarDatosProv1(); // Mostrar datos de Prov1
}