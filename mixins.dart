abstract class Animal{}

abstract class Mamifero extends Animal{}

abstract class Ave extends Animal{}

abstract class Pez extends Animal{}

mixin Volar{
  void volar() => print('estoy volando');
}

mixin Caminar{
  void caminar() => print('estoy caminando');
}

mixin Nadar{
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadar{}

class Cat extends Mamifero with Caminar{}

class Bat extends Mamifero with Volar, Caminar{}

class Pato extends Ave with Volar, Caminar, Nadar{}

class Paloma extends Ave with Volar, Caminar{}

class Tiburon extends Pez with Nadar{}

class Pezvolador extends Pez with Nadar, Volar{} // agregado Volar


void main(){
  
  final flipper = Delfin();
  flipper.nadar();
  
  final gato = Cat();
  gato.caminar();
  
  final murcielago = Bat();
  murcielago.caminar();
  murcielago.volar();
  
  final pato = Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();
  
  final paloma = Paloma();
  paloma.caminar();
  paloma.volar();
  
  final tiburon = Tiburon();
  tiburon.nadar();
  
  final pezVolador = Pezvolador();
  pezVolador.nadar();
  pezVolador.volar();
}