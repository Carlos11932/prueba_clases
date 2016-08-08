require "pry"

class Taller
	def initialize(mecanicos)
		@plazas = []
		@mecanicos = mecanicos
		@jefe = 1
	end
	def nuevo_vehiculo(vehiculo)
		@plazas.push(vehiculo)
	end
	def eliminar_vehiculo(vehiculo)
		@plazas.delete(vehiculo)
	end
end	

class Vehiculo
	attr_accessor :precio
	attr_reader :marca #attr_writer :atributo
	def initialize(ruedas, color, marca, plazas, precio)
		@ruedas = ruedas
		@color = color
		@marca = marca
		@plazas = plazas
		@precio = precio
	end
	def pintar(color)
		@color = color
	end	
end

class Coche < Vehiculo
	@@ruedas = 4
	def initialize(color, marca, plazas, precio, volante)
		super(@@ruedas, color, marca, plazas, precio)
		@volante = volante
	end	
end

class Moto < Vehiculo
	@@plazas = 2
	def initialize(ruedas, color, marca, precio, manillar)
		super(ruedas, color, marca, @@plazas, precio)
		@manillar = manillar
	end	
end

class Camion < Vehiculo
	def initialize(ruedas, color, marca, plazas, precio, volante)
		super(ruedas, color, marca, plazas, precio)
		@volante = volante
	end
end	

mi_coche = Coche.new("rojo", "Renault", 5, 9600, "redondo")
coche_rocio = Coche.new("azul", "Toyota", 5, 12500, "redondo")
mi_moto = Moto.new(2, "rosa", "bmw", 4000, "manillar")
mi_camion = Camion.new(10, "amarillo", "MAN", 3, 42300, "redondo" )
mi_taller = Taller.new(3)
binding pry