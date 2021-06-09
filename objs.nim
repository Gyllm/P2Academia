import utils

type
  Cliente* = ref object of RootObj
    nome*:string
    endereco*:string
    telefone*:int
    modalidade*:string # \modalidade escolhida

  Karate* = ref object of RootObj  
    altura*:float # Peso do cliente
    faixa*:string # Cor da faixa

  Musculacao* = ref object of RootObj
    peso*:float # peso do cliente
    tipo*:string # tipo de musculação preferida

  Funcional* = ref object of RootObj
    dieta*:string # tipo de dieta do cliente
    musica*:string # genero musical favorito do cliente