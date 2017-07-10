# README

7.- at = AnimalType.new(nombre:"chango")

8.- at.valid?

9.- at.save

10.- animal = Animal.new

11.- animal.valid?
	 animal.errors

12.- a1 = AnimalType.find_by(nombre:"chango").animal.build(nombre:"pancho").save



//47 Modelos y Scope
2.- Crear un scope llamado changos que devuelva sólo los tipos de animales chango

$ Animal.changos

3.- Crear un scope que devuelva todos los animales de un tipo
(scope con parámetro)

$ Animal.tipo('Mono')

4.- Crear un scope que devuelva los último 5 animales

$ Animal.cincoUltimos

5.- Dentro de la consola concatenar el scope 1 y 3

$ Animal.changos.cincoUltimos


II.- Métodos de clase

1.- Crear un método de clase llamado changos2 que devuelva sólo los animales del tipo chango
def self.changos2
	joins(:animal_type).
	where('animal_types.nombre = ?', 'Chango') 
end

2.- Crear un método de clase que recibe como parámetro el tipo de animal y devuelva todos los animales de ese tipo

def self.tipo2(tipo)
	joins(:animal_type).
	where(animal_types: {nombre: tipo})
end


	
3.- Crear un método que devuelva los último 5 animales

def self.cincoUltimos2
	order('id desc').limit(5)
end

4.- Dentro de la consola concatenar el scope 1 y 3.

Animal.changos2.cincoUltimos2