import moradas.*
import capos.*
import artefactos.*
object erethia{
const property enemigos = #{caterina, archibaldo, astra}
method enemigosQuePuedeVencer(personaje){
    
       return enemigos.filter({enemigo => personaje.puedeVencer(enemigo)})
}

}
object caterina{
    const property hogar = fortalezaDeAcero
    const property poder = 28
}

object archibaldo{
    const property hogar = palacioDeMarmol
    const property poder = 16
}

object astra{
    const property hogar = torreDeMarfil
    const property poder = 14
}