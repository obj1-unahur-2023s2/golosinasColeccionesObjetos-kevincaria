
object bombon {
	var peso = 15

	method precio() = 5

	method sabor() = "frutilla"

	method peso() = peso

	method contieneGluten() = false

	method recibirMordiso(){
		peso = (peso*0.8) - 1
	}
}

object alfajor {
	var peso = 300

	method precio() = 12

	method sabor() = "chocolate"

	method peso() = peso

	method contieneGluten() = true

	method recibirMordiso(){
		peso = peso*0.8
	}
}

object caramelo {
	var peso = 5

	method precio() = 1

	method sabor() = "frutilla"

	method peso() = peso

	method contieneGluten() = true

	method recibirMordiso(){
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	method precio() = 2

	method sabor() = "naranja"

	method peso() = peso

	method contieneGluten() = false

	method recibirMordiso(){
		peso = 2.max(peso*0.9)
	}
}

object oblea {
	var peso = 250

	method precio() = 5

	method sabor() = "vainilla"

	method peso() = peso

	method contieneGluten() = true

	method recibirMordiso(){
		return if(peso>70){peso = peso*0.5}else{peso = peso*0.75}
	}
}

object chocolatin {
	var pesoInicial
	var peso

	method peso(pesoInicial){
		pesoInicial = pesoInicial
		peso = pesoInicial
	}

	method peso() = peso

	method precio() = pesoInicial*0.5

	method sabor() = "chocolate"
	
	method contieneGluten() = true

	method recibirMordiso(){
		peso = 0.max(peso-2)
	}
}

object golosinaBaniada {
	var property golosinaBase
	var pesoBanio = 4

	method precio() = golosinaBase.precio() + 2

	method sabor() = golosinaBase.sabor()

	method peso() = golosinaBase.peso() + pesoBanio

	method contieneGluten() = golosinaBase.contieneGluten()

	method recibirMordiso(){
		golosinaBase.recibirMordiso()
		pesoBanio = 0.max(pesoBanio - 2)
	}
	
}

object tuttiFrutti {
	var property contieneGluten 
	var cantidadMordidas = 0
	const sabores = [frutilla, chocolate, naranja]

	method precio() = if(contieneGluten){10}else{7}

	method sabor() = sabores.get((cantidadMordidas) % 3)
	
	method peso() = 5

	method recibirMordisco() {
		cantidadMordidas ++
	}
}