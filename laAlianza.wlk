object alianza{
    const property ejercito = []

    method reclutar(unGuerrero){
        if (unGuerrero.salud() > 50 and unGuerrero.poder() >= 25){
            ejercito.add(unGuerrero)
        }
    }

    method entrenarGuerreros(){
        ejercito.forEach({g => g.entrenar()})
    }

    method entrenarA(unGuerrero){
        unGuerrero.entrenar()
    }

    method cantGuerreros() = ejercito.size()

    method poderTotalDelEjercito(){
        return ejercito.sum({g => g.poder() + 25})            
    }

    method esInvencible(){
        return self.esEjercitoPoderoso() || self.tieneAlMenosUnCampeon() 
    }

	method tieneAlMenosUnCampeon(){
		return ejercito.any({g => g.esCampeon()})
	}

    method esEjercitoPoderoso(){
        return ejercito.all({g => g.poder() > 50})
    }

    method guerrerosDebiles(salud){
        return ejercito.filter({g => g.salud() <= salud})
    }

    method ganaBatallaVs(unPoder){
        return self.poderTotalDelEjercito() > unPoder
    }

    method pocaSaludYMuchoPoder(){
        return self.guerreroDeMenosSalud() > self.guerreroDeMasSalud()  
    }

	method guerreroDeMenosSalud(){
		return ejercito.min({g => g.salud()}).poder()
	}

	method guerreroDeMasSalud(){
		return ejercito.max({g => g.salud()}).poder()
	}

    method listaDeNombres(){
        return ejercito.filter({g => g.esCampeon()}).map({g => g.nombre()})
    }
}