object terreno{
    const huevosEscondidos = [huevoMixto, huevoRepostero, matrioshka, conejo, blisterHuevitos]
    method huevosSinEncontrar() = huevosEscondidos.size()
    method huevosConChocolateBlanco() = huevosEscondidos.filter({h => h.tieneChocolateBlanco()}).size()
    method fueEncontrado(unHuevo) = not huevosEscondidos.contains(unHuevo) 
    

}

object huevoRepostero {
    method ingrediente() = chocolateBlanco
    method calorias() = 750



}

object huevoMixto {
  const property ingrediente = [chocolateBlanco, chocolateAmargo]
  method calorias() = 900
}

object conejo {
    var property peso = 200
    method ingrediente() = chocolateAmargo
    method calorias() = peso * 10
}

object blisterHuevitos {
    var property cantidad = 10
    method ingrediente() = chocolateConLeche
    method calorias() = (cantidad.div(2) * 150) + cantidad * 100
}

object matrioshka {
    var chocolateDentro = huevoRepostero
    const ingrediente = #{chocolateAmargo, chocolateDentro.ingrediente(), chocolateConLeche}
    var property decoracion = flor
    method calorias() = 3000 + chocolateDentro.calorias() + decoracion.calorias() + decoracion.calorias()
    method cambiarChocolate(chocolate){chocolateDentro = chocolate}
    method ingrediente() = ingrediente   
    method tieneChocolateBlanco() = chocolateDentro.ingrediente() == chocolateBlanco 
}


object ana{
 method peso() = 50
}

object jose{

}

object tito{

}

object chocolateBlanco{}
object chocolateAmargo{}
object chocolateConLeche{}
object flor{
    var property petalos = 5
    method calorias() = petalos * 100
}
object arbol{
    method calorias() = 150
}
