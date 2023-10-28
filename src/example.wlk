import Socios.*
  // Clase abstracta para representar un viaje genérico
   class Viaje {
    var idiomas= #{}
    var esfuerzo= true
    var broncearse= false
    var duracion= 0

    
    
    method calcularDias()=duracion
    method implicaEsfuerzo()=esfuerzo
    method sirveBroncearse()=broncearse
  
     method esViajeinteresante() = idiomas.size() > 1
}

class ViajePlaya inherits Viaje{
	var largoDeLaPlaya
	
	override method calcularDias() = largoDeLaPlaya/500
	override method implicaEsfuerzo() = largoDeLaPlaya>1200
	override method sirveBroncearse() = true
	
}
class ExcursionACiudad inherits Viaje{
	var atracciones 
	
	override method calcularDias()= atracciones / 2
	override method implicaEsfuerzo()= atracciones.between(5,8)//atracciones >=5 && atracciones <=8
	override method sirveBroncearse() = false
	override method esViajeinteresante()= atracciones == 5
	
	
}

class ExcursionesACiudadTropical inherits ExcursionACiudad{
	var dias
	override method calcularDias()= super() + 1 + super()//dias + 1
	override method sirveBroncearse() = true
}

class SalidaTrekking inherits Viaje{
	var kmSenderos= 0
    var diasSol = 0
    
    override method calcularDias()= kmSenderos / 50
    override method implicaEsfuerzo() = kmSenderos>80 
    override method sirveBroncearse() = diasSol >200 || (diasSol>=100 && kmSenderos>120)
    override method esViajeinteresante()= diasSol >140 && self.esViajeinteresante()
    
}

class ClaseGimnasia{
	var idiomas= #{"español"}
	var dias = 1
    var esfuerzo= true
    var broncearse = false
    
    method esRecomendadaParaSocio(unSocio) = unSocio.edad().between(20,30)
    method agregarIdioma()=idiomas
    method calcularDias()= dias
    method sirveBroncearse()=broncearse
    method implicaEsfuerzo()=esfuerzo
}







