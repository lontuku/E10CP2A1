class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(file = 'notas.txt')
  	alumnos = []
	data = []
	File.open(file, 'r') { |file| data = file.readlines }
	data.each do |alumno|
  		alumnos << Alumno.new(*alumno.split(', '))
	end
	alumnos
  end
end


a = Alumno.read_file
b = Alumno.read_file("notas2.txt")
print a 
print b


=begin
- Crear un método de clase llamado *read_file* que reciba como argumento 
el <u>nombre del archivo</u> (por defecto debe ser 'notas.txt') y devuelva 
a colección de objetos. El método debe alojar las instrucciones que se encuentran 
después de la clase. Finalmente imprimir la colección de objetos generada.
 >Hint: Debes reemplazar el argumento de *File.open* con el nombre del argumento 
 del método *read_file*.
=end
 