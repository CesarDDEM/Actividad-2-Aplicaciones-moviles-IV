var aux: String = ""
var opcionIngresada: String = aux
var saldoTotal: Double = 0.0

func deposito() {
print("Ingresa la cantidad a depositar: ")
  aux = readLine()!
  opcionIngresada = aux
//creamos una variable auxiliar para guardar el valor ingresado por el usuario y otra para convertirlo a double
  let cantidadDepositada = Double(opcionIngresada) ?? 0.0
//le sumamos al saldo total la cantidad depositada
  saldoTotal = saldoTotal + cantidadDepositada
  if cantidadDepositada != 0.0 {
    print("Abono exitoso por $ \(cantidadDepositada)")
    
  } else {
  print(" Error al realizar el deposito, No se ha ingresado una cantidad valida")
   }
  }

func retiro() {
  print("Ingresa la cantidad a retirar: ")
  aux = readLine()!
  opcionIngresada = aux
  let cantidadRetirar = Double(opcionIngresada) ?? 0.0
  if cantidadRetirar > saldoTotal {
    print("No cuenta con saldo suficiente para realizar el retiro") 
     print ("\n")
    print("¿Desea realizar otra operacion? s/S n/N")
    aux = readLine()!
    opcionIngresada = aux
    if opcionIngresada == "n" || opcionIngresada == "N" || opcionIngresada == "no" || opcionIngresada == "NO"{
     opcionIngresada = "4" 
      print("Cerrando sesion de cuenta, vuelva pronto....")
    }
  } else{
    saldoTotal = saldoTotal - cantidadRetirar
    print("Retiro exitoso por $ \(cantidadRetirar)pesos")
  }
}

//Menu interactivo
while opcionIngresada != "4" {
  print("\n")
  print ("******MENU BANCOPPEL******")
  print ("\n")
  print ("1.- Deposito")
  print ("2.- Retiro")
  print ("3.- Saldo")
  print ("4.- Salir")
  print ("\n")
  print ("Elije el numero de la opcion: ")
  
  aux = readLine()!
  opcionIngresada = aux

  switch opcionIngresada{
    case "1":
    deposito()
  print("¿Desea realizar otro deposito? (S/N)")
  aux = readLine()!
  opcionIngresada = aux
    //Operador logicos or || se utiliza para validar si se cumple alguna de las condiciones
    if opcionIngresada == "S" || opcionIngresada == "s" || opcionIngresada == "si" || opcionIngresada == "SI" {
     deposito()
    } else if opcionIngresada == "no" || opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "no" || opcionIngresada == "NO" {
      print ("¿Deseas realizar otra operacion? (S/N)")
      aux = readLine()!
      opcionIngresada = aux
      
      if opcionIngresada ==  "no" || opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "no" || opcionIngresada == "NO" {
       print("Cerrando sesion, vuelva pronto!")
      opcionIngresada = "4"
      }
    }

    case "2":
    retiro()
    print("¿Desea realizar otro retiro? (S/N)")
  aux = readLine()!
  opcionIngresada = aux
    //Operador logicos or || se utiliza para validar si se cumple alguna de las condicion
    if opcionIngresada == "S" || opcionIngresada == "s" || opcionIngresada == "si" || opcionIngresada == "SI" {
       retiro()
      } else if opcionIngresada == "no" || opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "no" || opcionIngresada == "NO" {
        print ("¿Deseas realizar otra operacion? (S/N)")
        aux = readLine()!
        opcionIngresada = aux

        if opcionIngresada ==  "no" || opcionIngresada == "N" || opcionIngresada == "n" || opcionIngresada == "no" || opcionIngresada == "NO" {
         print("Cerrando sesion, vuelva pronto!")
        opcionIngresada = "4"
        }
      }
    case "3":
    print("Tu saldo actual es de $ \(saldoTotal)pesos." )

    case "4":
    print("Cerrando sesion, vuelva pronto!")
    opcionIngresada = "4"
    
    default:
    print ("******Error****** \n Opcion no valida")
  }


}