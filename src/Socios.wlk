import example.*

class Socio {
	var actividadesRealizadas =#{}
    var maxActividades 
    var edad
    const property idiomas = #{}
	
	method esAdoradorDelSol()=actividadesRealizadas.all({act=>act.sirveBroncearse()})
	method actividadesEsforzadas()=actividadesRealizadas.filter({act=>act.implicaEsfuerzo()})
	method realizarActividad(actividad){
		if(actividadesRealizadas.size()>=maxActividades){
			self.error("El socio ha alcanzado su máximo de actividades")
		}else{
			actividadesRealizadas.add(actividad)
		}
	}
	
}

class SocioTranquilo inherits Socio{
	method  leAtrae(actividad)= actividad.calcularDias() >= 4
}

 class SocioCoherente inherits Socio{
 	method leAtrae(actividad){
 		 if (self.esAdoradorDelSol()) {
        return actividad.sirveBroncearse()
      } else {
        return actividad.implicaEsfuerzo()
      }
 	}
 }
class SocioRelajado inherits Socio{
	method leAtraeActividad(unaActividad) = not idiomas.intersection(unaActividad.idiomas()).isEmpty()
	
	
}
