object rolando {
 const inventario = []
 const castillo = []
 var capacidad = 2

method inventario(){
    return inventario
}

method castillo(){
    return castillo
}

method mochila(){
    return inventario.size()
}

method capacidad(){
    return capacidad
}

method puedeAgregarObjeto(){
    return self.capacidad()
}

method encontrarObjeto(objeto){
    if(self.puedeAgregarObjeto()){
    inventario.add(objeto)}
else{
    self.error("mochila llena :c")
}


}

method volverAlCastillo(){
    castillo.addAll(inventario)
    inventario.clear()
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