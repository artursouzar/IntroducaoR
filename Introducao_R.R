## Artur de Souza Ribeiro/ Data Science / RA <- 2220698
## https://www.linkedin.com/in/artur-de-souza-ribeiro-18a4ba1bb/
## https://www.linkedin.com/in/wandreveloso/

## Principais Funções e Variáveis 
paises <- c("Brasil", "EUA")   
class(paises)  ##Literalmente oq tá escrito
class("paises") ## Tipo da Palavra
rank <- c(1,3)
class(rank)
class("rank")
names(rank) <- paises
rank
ls ##lista de variáveis
installed.packages()
data()


##Como calcular a soma dos 10 primeiros números inteiros
10*(10+1)/2

##Função de Sequência no R
n <- 1000
x <- seq(1,n)
+(x)

install.packages("dslabs")


##Dataframes Principais comandos, variáveis e funções
library(dslabs)


data(murders)

#Mostra a classe
class(murders) 

#Mostra a estrutura 
str(murders) 

#Mostra as 5 primeiras linhas
head(murders) 

#Accessor $ #(Acessando a populaçâo que tá dentro de Murders)
murders$population

#Mostra o no9me das colunas
names(murders)  


## Criando uma variável chamada pop
pop <- murders$population

#Quantos Elementos tem
length (pop) 

#Qual é o tipo dos caracteres
class(pop) 
class(murders$state)


## Variáveis Lógicas

#Dois símbolos de igual significa que estamos fazendo uma pergunta
z <- 3 == 2 
z
class(z)


#Factors
class(murders$region)

levels(murders$region)



#Tipos de Uso (length(level(xxx)):
#a. Usado para dados categóricos, e sâo armazenados como númericos inteiros, ao invés de strings:
length(levels(murders$region))



#Se usar 1 colchete ao invés de 2, vai retornar um novo dataframe, ao invés do vetor:
murders$region == murders [["region"]] 
class(murders[["region"]])

class(murders["region"])

x <- c("a", "a", "b", "b", "b", "c")
class(x)

#Resumo dos dados tabulados:
table(x) 


#Raiz quadrada:
sqrt 

#Atividade 1
a <- 2
b <- -1
c <- -4
(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)





