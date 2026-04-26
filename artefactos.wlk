import capos.*
import moradas.*
object espadaDelDestino{
    var usos = 0
    var property personaje = rolando
    method usos(){
        return usos
    }

    method usar(){
        usos = usos + 1
    }

    method poder(){
        return if (self.usos()==0){
         rolando.poderBase()
        }else{
         rolando.poderBase() / 2   
        }    
    }
 
}

object libroDeHechizos{
    var property personaje = rolando
    const hechizos = []
    method hechizos (){
        return hechizos
    }
    
    method poder(){
        return if(not hechizos.isEmpty()){
         hechizos.first().poder(personaje)
         }else{
            0
         }
            
    }
    
    method usar(){
        if( not hechizos.isEmpty()){
            hechizos.remove(hechizos.first())
        }
    }

    method agregarHechizo(hechizo){
        if(not hechizos.contains(hechizo)){
        hechizos.add(hechizo)
        }
    }

}

object bendicion {
  const poder = 4
  method poder(personaje){
    return poder
  }
}

object invisivilidad{
    method poder(personaje){
        return libroDeHechizos.personaje().poder()
    }
}

object invocacion{
    method poder(personaje){
        personaje.artefactoMasPoderosoDeSuMorada()
    }
}

object collarDivino{
  var usos = 0
  var property personaje = rolando
   
    method usos(){
        return usos
    }

    method poder(){
        return if (personaje.poderBase()< 6){
        3
        }else{
        3 + self.usos()
        }    
    }

    method usar(){
        usos = usos + 1
    }
}

object armaduraDeAceroValyrio{
    var property personaje = rolando
    const property poder = 6
    var property usos= 0
    method usar(){
        usos = usos + 1
    }
} 