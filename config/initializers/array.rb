class Array

		@@array ||=["christian","jordy","mamani"]
		$contador=+ 1

	def self.mirar
		@@array
	end
	def borrar(nombre)
		@@array.delete(nombre)
	end
	def self.agregar(nombre)
	  @@array << nombre
	end

end