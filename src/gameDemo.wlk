import wollok.game.*

object player {
	var property position
	var property image = "player.png"
	
	var property maizPlantado = []
	
	method moveteDerecha(){
		if(self.puedeMoverA(self.position().right(1))) {
			self.position(self.position().right(1))
		} else {
			self.position(game.at(0, self.position().y()))
		}
	}
	
	method moveteIzquierda(){
		if(self.puedeMoverA(self.position().left(1))) {
			self.position(self.position().left(1))
		} else {
			self.position(game.at(game.width()-1, self.position().y()))
		}
	}
	
	method moveteArriba(){
		if(self.puedeMoverA(self.position().up(1))) {
			self.position(self.position().up(1))
		} else {
			self.position(game.at(self.position().x(), 0))
		}
	}
	
	method moveteAbajo(){
		if(self.puedeMoverA(self.position().down(1))) {
			self.position(self.position().down(1))
		} else {
			self.position(game.at(self.position().x(), game.height()-1))
		}
	}
	
	method moveteA(unaPosicion){
		self.position(unaPosicion)
	}

	method agregarMaiz(maiz){
		maizPlantado.add(maiz)
	}
	
	method sacarMaiz(maiz){
		maizPlantado.remove(maiz)
	}
	
	method cantidadDeMaiz() {
		return maizPlantado.size()
	}
	
	method puedeMoverA(posicionNueva) {
		return posicionNueva.x().between(0, game.width() -1) &&
			   posicionNueva.y().between(0, game.height() -1)
	}
}

class Maiz {
	var property position
	var property image = "corn_adult.png"
}
