object camion{
	var property carga = []
	const tara = 1000
	method cargar(cosa) { carga.add(cosa) }
	method descargar(cosa) { carga.remove(cosa) }

	method objetosPeligrosos(n){
		return carga.filter( { elemento => elemento.peligrosidad() > n } )
	}
	// también podría haberlo hecho con un = nada más, porque era una línea muy corta.

	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return not carga.any( { elemento => elemento.peligrosidad() > nivelMaximoPeligrosidad } )
	}
	
	// niego el comienzo del return para que la frase tenga más lógica. si usara el not ADENTRO
	// de los brackets diría que hay alguno que no es peligroso... y yo necesito que no haya
	// ninguno peligroso.
	
	// también podría haberlo hecho con un all en vez de un any:
	
	method puedeCircularEnRutaAll(nivelMaximoPeligrosidad){
			return carga.all( { elemento => elemento.peligrosidad() <= nivelMaximoPeligrosidad } )
	}
	
	method tieneAlgoQuePesaEntre(min, max){
		return carga.any({ elemento => elemento.peso().between(min, max) })
	}
	
	method pesoTotal() = carga.sum{ elemento => elemento.peso() } + tara
	
	method cosaMasPesada() = carga.max{ elemento => elemento.peso() }
	// y si quisiera que me deuvelva el peso de la cosa más pesada sería:
	method pesoDeLacosaMasPesada() = carga.max{ elemento => elemento.peso() }.peso()
}

object knightRider{
	method peso() = 500
	method peligrosidad () = 10
}

object bumblebee{
	var property esAuto = true
	method peso() = 800
	
	//method peligrosidad() = if (esAuto) 15 else 30
	
	method peligrosidad(){
		if (esAuto){
			return 15
		} else { return 30}
	}
	
	method convertirAuto() {esAuto = true}
	method convertirRobot() {esAuto = false}
}

object depsito{
	var property cosas  = [knightRider, bumblebee]

	method cargarCamion(camion){
		cosas.forEach ( { cosa => camion.cargar(cosa) } ) // trabajar con bloque
	}
	
	method objetosPeligrosos(n){
		
	}
}

object contenedorPortuario{
	const peso = 100
	const property carga = []
	method agregarCarga(cosa){ carga.add(cosa) }
	
	method peso() = carga.sum{ elemento => elemento.peso() } + peso
	
	method peligrosidad(){
		if (self.carga().isEmpty()){
			return 0
		} else {
			return carga.max{ elemento => elemento.peligrosidad() }.peligrosidad()
		}
	}

	method peligrosidadCheta(){
		return
			if (self.carga().isEmpty()) {
				0
			} else {
				carga.max{ elemento => elemento.peligrosidad() }.peligrosidad()
			}
	}
}

object embalajeDeSeguridad{
	var property cosaEmbalada = null
	method peso() = cosaEmbalada.peso()
	method peligrosidad() = cosaEmbalada.peligrosidad() / 2 
	
}