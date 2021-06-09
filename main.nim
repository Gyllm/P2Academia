import utils
import strformat
import strutils
var x = "9"
while x != "4":
    menu()
    var x = readline(stdin)
    
    case x
    of "1": cadCliente()
    of "2": consCliente()
    of "3": transfCliente()
    of "4": echo "Até breve, o programa será encerrado"
    else: echo "Opção inválida!, escolha uma opção válida"