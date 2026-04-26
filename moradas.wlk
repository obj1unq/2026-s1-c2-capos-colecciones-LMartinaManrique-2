import capos.*
import artefactos.*

object castillo{
    const inventario = []

    method artefactoMasPoderoso(){
        return inventario.maxIfEmpty({artefacto => artefacto.poder()},{0})
    }
    
    method inventario() {
    return inventario
    }
    method depositarObjetos() {
      inventario.addAll(rolando.inventario())
    }
}

object fortalezaDeAcero{

}

object palacioDeMarmol {
  
}

object torreDeMarfil{

}