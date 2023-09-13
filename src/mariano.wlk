object mariano {
	const bolsa = []
	
	method comprar(unaGolosina){
		bolsa.add(unaGolosina)
	}

	method desechar(unaGolosina){
		bolsa.remove(unaGolosina)
	}

	method cantidadDeGolosinas(){
		return bolsa.size()
	}

	method tieneLaGolosina(unaGolosina){
		return bolsa.contains(unaGolosina)
	}

	method probarGolosinas(){
		bolsa.forEach({g => g.recibirMordisco()})
	}

	method hayGolosinasSinTACC(){
		return bolsa.any({g => not g.contieneGluten()})
	}

	method preciosCuidados(){
		return bolsa.all({g => g.precio() <= 10})
	}

	method golosinaDeSabor(unSabor){
		return bolsa.find({g => g.sabor() == unSabor})
	}

	method golosinasDeSabor(unSabor){
		return bolsa.filter({g => g.sabor() == unSabor})
	}

	method sabores(){
		return bolsa.map({g => g.sabor()}).asSet()
	}

	method golosinaMasCara(){
		return bolsa.max({g => g.precio()})
	}

	method pesoGolosinas(){
		return bolsa.map({g => g.peso()}).sum()
	}

	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(bolsa.asSet())
	}

	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(self.sabores())
	}
	
}
