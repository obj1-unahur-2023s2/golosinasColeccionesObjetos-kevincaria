
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
	var property peso

	method precio() = peso*0.5

	method sabor(){

	}

	method contieneGluten() = true
}

object golosinaBañada {

	method precio(){

	}

	method sabor(){

	}

	method peso(){

	}

	method contieneGluten(){

	}
}

object tuttiFrutti {

	method precio(){

	}

	method sabor(){

	}

	method peso(){

	}

	method contieneGluten(){

	}
}