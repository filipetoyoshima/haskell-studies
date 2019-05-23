-- module Pilha () where

data Pilha p = Vazia
             | Pilha [p]
    deriving (Eq, Show)

esvazia :: Pilha p -> Pilha p
esvazia _ = Vazia

empilha :: p -> Pilha p -> Pilha p
empilha valor Vazia = Pilha[valor]
empilha valor (Pilha []) = Pilha[valor]
empilha valor (Pilha p) = Pilha(valor:p)

desempilha :: Pilha p -> Pilha p
desempilha Vazia = error "Pilha vazia"
desempilha (Pilha []) = error "Pilha vazia"
desempilha (Pilha(h:t)) = Pilha t

topo :: Pilha p -> p
topo Vazia = error "Tem nada"
topo (Pilha []) = error "Tem nada"
topo (Pilha (h:t)) = h

listaPPilha :: [p] -> Pilha p
listaPPilha lista = (Pilha lista)