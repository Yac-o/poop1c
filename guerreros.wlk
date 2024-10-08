object luke{
    var poder = 5
    var salud = 75
    var property sableDeLuz = sableVerde

    method poder() = poder

    method salud() = salud
    
    method entrenar(){
        salud += 25
        poder += sableDeLuz.poder()
    }

    method esCampeon(){
        return poder >= 30
    }

    method nombre() = "Luke Skywalker"    
}

object yoda{
    var poder = 50
    var salud = 30
    var usandoLaFuerza = false

    method poder() = poder

    method salud() = salud


    method alternarLaFuerza(){
        usandoLaFuerza = !usandoLaFuerza
    }

    method entrenar(){
        if (usandoLaFuerza)
            poder += poder
        else
            salud += 25
    }

    method esCampeon() = true

    method nombre() = "Yoda"
}

object r2d2{
    var salud = 50
    var cantReparaciones = 0

    method salud() = salud

    method poder() = 0.max(80 - cantReparaciones * 2)

    method entrenar(){
        salud += 10
        cantReparaciones += 1
    }

    method esCampeon(){
        return cantReparaciones.even()
    }

    method nombre() = "R2-D2"
}

object c3p0{
    const property salud = 80
    const property poder = 30
    var capacidadReparacion = 3

    method entrenar(){
        capacidadReparacion += 1
    }

    method repararNave(){
        if (self.esCampeon()){
            halconMilenario.aumentarBlindaje(100*capacidadReparacion)
            halconMilenario.aumentarVelocidad(100*capacidadReparacion)

        } else{
            halconMilenario.aumentarBlindaje(200)
            halconMilenario.aumentarVelocidad(200)
        }
    }

    method esCampeon(){
        return capacidadReparacion > poder * 0.1
    }

    method nombre() = "C-3P0"
}

object halconMilenario{
    var blindaje = 1000
    var velocidad = 500

    method aumentarBlindaje(unaCantidad){
        blindaje += unaCantidad
    }

    method blindaje() = blindaje

    method aumentarVelocidad(unaCantidad){
        velocidad += unaCantidad
    }

    method velocidad() = velocidad
}

//  Sables de Luke:
object sableVerde{
    method poder() = 15
}

object sableAzul{
    method poder() = 25
}