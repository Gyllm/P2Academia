import objs
import strutils
import strformat

var 
  cad:seq[Cliente]
  kar:seq[Karate]
  musc:seq[Musculacao]
  fun:seq[Funcional]

proc linha() =
  echo "++++++++++++++++++++++++++++++++++++++++++++++++++"

proc menu*() =
  echo """
  ACADEMIA MASTERGYM
  [1] - CADASTRAR CLIENTE
  [2] - CONSULTAR CLIENTES
  [3] - TRANSFERIR CLIENTE
  [4] - SAIR
	"""
  linha()

proc cadCliente*() = 
  var cli = Cliente()
  var kar = Karate()
  var musc = Musculacao()
  var fun = Funcional()
  echo "Cadastrar Cliente" 
  echo "Digite o nome"
  cli.nome=readline(stdin)
  echo "Digite o endereço do Cliente"
  cli.endereco=readline(stdin)
  echo "Digite o telefone do Cliente"
  cli.telefone=parseInt(readline(stdin))
  var z:int
  echo "Escolha a modalidade do Cliente"
  echo """
  ACADEMIA MASTERGYM - MODALIDADE
  [1] - Karatê
  [2] - Musculação
  [3] - Funcional"""
  z = parseInt(readline(stdin))
  if z==1:
    cli.modalidade = "Karate"
    echo "Qual a altura do cliente"
    kar.altura = parseFloat(readline(stdin))
    echo "Qual a cor da faixa do cliente"
    kar.faixa = readLine(stdin)
  elif z==2:
    cli.modalidade="Musculacao"
    musc.peso=parsefloat(readLine(stdin))
    musc.tipo=readLine(stdin)
  elif z==3:
    cli.modalidade="Funcional"
    fun.dieta=readLine(stdin)
    fun.musica=readLine(stdin)
  else:
    echo "Escolha uma opção válida"
  linha()

proc consCliente*()= 
  linha()
  echo """
    ACADEMIA MASTERGYM - CONSULTA
    [1] - Consulta por Nome
    [2] - Consulta por Categoria
    [3] - Voltar ao menu anterior"""
  linha()

proc transfCliente*() = 
  
  linha()