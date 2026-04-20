object rolando {
 const inventario = []
 const historial = []
 var capacidad = 2
 var hogar = castillo

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
    }
}

method volverAlHogar(){
    hogar.depositarObjetos()
    inventario.clear()
}
}

object castillo{
    const inventario = []

method inventario() {
  return inventario
}
    method depositarObjetos() {
      inventario.addAll(rolando.inventario())
    }
}
object espadaDelDestino{
 
}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraDeAceroValyrio{

}