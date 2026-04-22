import artefactos.*
import moradas.*
import enemigos.*
object rolando {
 const inventario = []
 const historial = []
 const enemigos = #{caterina, archibaldo, astra}
 var capacidad = 2
 var hogar = castillo
 var property poderBase = 5


method poderDePelea(){
    return self.poderBase() + self.poderDeArtefactos()
}

method poderDeArtefactos(){
    return inventario.sum({artefacto => artefacto.poder()})
}
method hogar(){
    return hogar
}

method hogar(_hogar){
    hogar = _hogar
}

method inventario(){
    return inventario
}

method mochila(){
    return inventario.size()
}

method capacidad(){
    return capacidad
}

method capacidad(_capacidad){
    capacidad = _capacidad
}
method artefactosTotalesAdquiridos(){
    return self.inventario() + hogar.inventario()
}

method tieneArtefactoEnPosesiones(artefacto){
    return self.artefactosTotalesAdquiridos().contains(artefacto)
}


method puedeAgregarObjeto(artefacto){
    return self.mochila() < self.capacidad() && not self.tieneArtefactoEnPosesiones(artefacto)
}

method encontrarArtefacto(artefacto){
    historial.add(artefacto)
    if(self.puedeAgregarObjeto(artefacto)){
        inventario.add(artefacto)
        artefacto.personaje(self)
    }
}

method volverAlHogar(){
    hogar.depositarObjetos()
    inventario.clear()
}

method artefactoMasPoderosoDeSuMorada(){
    return hogar.artefactoMasPoderoso()
}

method pelearBatalla(){
    inventario.forEach({artefacto => artefacto.usar()})
    poderBase = poderBase + 1
}

method puedeVencer(enemigo){
    return self.poderDePelea() > enemigo.poder()
}
method enemigosQuePuedeVencer(){
       return enemigos.filter({enemigo => self.puedeVencer(enemigo)})
}

method moradasQuePuedeConquistar(){
    return self.enemigosQuePuedeVencer().map({e => e.hogar()})
}

method esPoderoso(){
    enemigos.all({enemigo => self.puedeVencer(enemigo)})
}

method esArtefactoFatal(artefacto,enemigo){
    return artefacto.poder() > enemigo.poder()
}

method tieneArtefactoFatal(artefacto){
    inventario.any({artefacto => })
}

}

