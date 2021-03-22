letras = ["q","w","e","r","t","y"]
letras.class
letras.methods
letras.size
letras[2]
letras[-1]
letras[-2]
letras[100]
letras[-100]
letras.methods.size
letras.include? "q"
letras.include?"b"
letras.last
letras.count{|x| x=="q"}
[1,2,3,4,5].count{|x| x.even?}
[1,2,3,4,5].map {|x| x*2}
[1,2,3,4,5].map {|x| x**2}
[1,2,3,4,5].select {|x| x.odd?}
[1,2,3,4,5].min
[1,2,3,4,5].max
[1,2,3,4,5].sum
array=[1,4.5,"string",:symbol,[]]
array.map{|x| x.class}
"hola mundo".split(" ")
"hola mundo".split(" ").size
"hola mundo".split(" ").map{|x| x.upcase}
puts "hola mundo".split(" ").map{|x| x.upcase}.join("\n")

letras_ordenadas=letras.sort
puts letras_ordenadas

# Así declaras un dato Hash
capitales = {}
capitales = {"Colombia" => "Bogota" }

# Podemos agregar más elemntos así
capitales["Mexico"] = "Ciudad de Mexico"

# Para acceder a un valor específico, la llave tiene que ser igual, en Ruby no se diferencia cuando un carácter es Uppercase o lowercase
capitales["Colombia"] # "Bogota"

# Para saber su tamaño
capitales.size

# Para saber si está vacío
capitales.empty?

# Preguntar si este Hash tiene un valor específico en el que estemos interesados
capitales.has_value? "Bogota"

# Preguntar si este Hash tiene una llave (elemento) específico en el que estemos interesados
capitales.has_value? "Colombia"

# Podemos invertir los valores a llames y viceversa
capitales.invert
capitales.invert["Bogota"] # "Colombia"

# Se utiliza para mezclar dos Hashes
capitales.merge({"Marte" => "Musk"})