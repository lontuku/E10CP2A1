
module Formula
	def perimetro
		if self.class == Rectangulo
			return 2*(base+altura)
		else 
			return 4*lado
		end
	end

	def area
		if self.class == Rectangulo
			return base*altura
		else
			return lado*lado
		end
	end
end

class Rectangulo
	attr_accessor :base, :altura
	include Formula
	def initialize(base, altura)
	@base= base
	@altura = altura
	end

	def lados
		puts "Los lados del rectángulo son: #{@base} y #{@altura}."
	end
end

class Cuadrado
	attr_accessor :lado
	include Formula
	def initialize(lado)
	@lado = lado
	end

	def lados
		puts "El lado del cuadrado es #{@lado}."
	end

end

c = Cuadrado.new(3)
c.lados
puts "El área del cuadrado es " + c.area.to_s
puts "El perímetro del cuadrado es "+ c.perimetro.to_s
r = Rectangulo.new(2,9)
r.lados
puts "El área del rectángulo es " + r.area.to_s
puts "El perímetro del rectángulo es "+ r.perimetro.to_s



