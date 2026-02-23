// Definimos una clase
class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;
  String ciudad;

  // Constructor
  Persona(this.nombre, this.edad, this.ciudad);

  // Método
  void saludar() {
    print("Hola, soy $nombre, tengo $edad años y vivo en $ciudad.");
  }
}

void main() {
  // Crear un objeto (instancia)
  Persona persona1 = Persona("Juan", 25, "Madrid");

  // Acceder a atributos
  print(persona1.nombre);
  print(persona1.edad);

  // Llamar método
  persona1.saludar();
}