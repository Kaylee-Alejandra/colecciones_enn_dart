class Instrumento {
  int? codigo;
  String tipo;
  String color;
  String marca;
  double precio;
  String nombre;
  double tamanio;

  Instrumento({
    required this.tipo,
    required this.color,
    required this.marca,
    required this.precio,
    required this.nombre,
    required this.tamanio,
  });

  void mostrarDatos() {
    print('Código: ${codigo ?? "No asignado"}');
    print('Tipo: $tipo');
    print('Color: $color');
    print('Marca: $marca');
    print('Precio: $precio');
    print('Nombre: $nombre');
    print('Tamaño: $tamanio');
  }
}

class Usuario {
  String id_usuario;
  String historial;
  String nombre;
  String tipo_pago;
  int tickets;
  String productos;
  double saldo;

  Usuario({
    required this.id_usuario,
    required this.historial,
    required this.nombre,
    required this.tipo_pago,
    required this.tickets,
    required this.productos,
    required this.saldo,
  });

  void mostrarDatos() {
    print('ID: $id_usuario');
    print('Historial: $historial');
    print('Nombre: $nombre');
    print('Tipo de Pago: $tipo_pago');
    print('Tickets: $tickets');
    print('Productos: $productos');
    print('Saldo: $saldo');
  }
}

class Empleado {
  String id;
  String nombre;
  String direccion;
  String puesto;
  double sueldo;
  String telefono;
  String correo;

  Empleado({
    required this.id,
    required this.nombre,
    required this.direccion,
    required this.puesto,
    required this.sueldo,
    required this.telefono,
    required this.correo,
  });

  void mostrarDatos() {
    print('ID: $id');
    print('Nombre: $nombre');
    print('Dirección: $direccion');
    print('Puesto: $puesto');
    print('Sueldo: $sueldo');
    print('Teléfono: $telefono');
    print('Correo: $correo');
  }
}

void main() {
  // Ejemplo de Instrumento
  Instrumento guitarra = Instrumento(
    tipo: 'Guitarra',
    color: 'Rojo',
    marca: 'Fender',
    precio: 1200.50,
    nombre: 'Stratocaster',
    tamanio: 12.5,
  );

  guitarra.codigo = 1;

  guitarra.mostrarDatos();

  print('\n--- tabla usuarios ---\n');

  // Ejemplo de Usuario
  Usuario usuario1 = Usuario(
    id_usuario: "usuario1",
    historial: 'compro 2 veces',
    nombre: 'Anna',
    tipo_pago: 'tarjeta',
    tickets: 2,
    productos: '2 productos',
    saldo: 1200.50,
  );

  usuario1.mostrarDatos();

  print('\n--- tabla empleados ---\n');

  // Ejemplo de Empleado
  Empleado juan = Empleado(
    id: "emp1",
    nombre: 'Juan',
    direccion: 'Calle 123',
    puesto: 'Gerente',
    sueldo: 1200.50,
    telefono: '1234567890',
    correo: "empleado@gmail.com",
  );

  juan.mostrarDatos();
}