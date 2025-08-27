object pepe {
    var categoria = gerente
    var tipoDeBonoPorResultado = porcentaje
    var tipoDeBonoPorPresentismo = "normal"
    var faltas = 0

    method categoria() = categoria 
    method faltas() = faltas 

    method categoria(_categoria){
        categoria = _categoria
    }

    method tipoDeBono(_tipoDeBono){
        tipoDeBonoPorResultado = _tipoDeBono
    }

    method tipoDeBonoPorPresentismo(_tipoDeBonoPorPresentismo){
        tipoDeBonoPorPresentismo = _tipoDeBonoPorPresentismo
    }

    method faltas(_faltas){
        faltas = _faltas
    }
    
    method sueldo() = self.neto() + self.bonoPorResultados() + 
    self.bonoPorPresentismo() 

    method neto() = categoria.sueldo()  

    method bonoPorResultados() = tipoDeBonoPorResultado.sueldo()

    method bonoPorPresentismo() = tipoDeBonoPorPresentismo.sueldo()
}

object gerente {
    const sueldo = 15000

    method sueldo() = sueldo
}

object cadete {
    const sueldo = 20000

    method sueldo() = sueldo
}

object porcentaje {
    method sueldo() = pepe.neto() * 0.10
}

object montoFijo {
    const sueldo = 800

    method sueldo() = sueldo
}

object normal {
    method sueldo() = if (pepe.faltas() == 0) { 2000 }
                        else if (pepe.faltas() == 1) { 1000 }
                        else { 0 }
}

object ajuste {
    method sueldo() = if (pepe.faltas() > 0) { 0 }
                        else { 100 }
}

object demagogico {
    method sueldo() = if (pepe.neto() > 18000) { 500 }
                        else { 300 }
}

object nulo {
    method sueldo() = 0
}