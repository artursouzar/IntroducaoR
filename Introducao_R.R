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

#Mostra o nome das colunas
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



#A diferença do Vetor e Dataframe é que no vetor todos os elementos são do mesmo tipo

#Como declarar um vetor?
c 
concatenate


#Vetores
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")


codes <- c(italy = 380, canada = 124, egypt = 818)
class(codes)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
class(codes)

#Função names é responsável por colocar um nomke para o código, (nome aos bois)
names(codes) <- country #complementando "codes" com country ou seja jogando os valores que estão em country dentro de codes
country


#Acessando Valores
codes[2] #segundo elemento
codes[c(1,3)]   #primeiro elemento e terceiro
codes[c(1:3)]   #primeiro elemento até o terceiro
codes[c(1,2,3)] #primeiro elemento até o terceiro
codes["canada"]
codes[c("egypt", "italy")]
#Toda vez que eu for trabalhar com uma lista eu tenho que usar o c (concatanate)


#Comparando
c(1,2,3,4) == c(1:4)
c(1,2,2,4) == c(1:4)


#Coerção <- Propriedade do R que faz com que se tente ajeitar tudo como se estivesse correto
x <- c(1, "canada", 3)
class(x)
print(x)


#Conversão <- Transforma qualquer tipo em outro tipo haha
as.character()
x <- 1:5
y <- as.character(x)
y
as.numeric(y)


#Dados NA <- Not Available

x <= c("1","b","3")
as.numeric(x)


temp <- c(50,75,90,100,150)
city <- c("Brasilia","Paris","Japonvar","Itu","Roma")
city
names(temp) <- city


#Tirando Roma para Teste
city <- c("Brasilia","Paris","Japonvar","Itu")
names(temp) <- city
temp

#Pegando os 3 primeiros elementos
temp[c(1:3)]

#Pegando elementos específicos
temp[c("Paris", "Itu")]

#Sequência/
x <- (13:71)
length(x)
sum(x)
sum(x[1:3])
sum(x[seq(1,59,2)])

impares <- (seq(1,100,2))
impares
length(seq(6,55,4/7))

x <- seq(0, 100, length.out = 5)

#Exercícios Vetores
x <- c(1,3,5,"a")
class x
class (x)

#Convertendo para Númerico
as.numeric(x)


#Matrizes (Elementos de Uma Mesma Classe)

e <- matrix(ncol=2, nrow=2, data = 1:4)
e[2,1] #Segunda Linha Primeira Coluna
e[2, ] #Segunda Linha Inteira
e[ ,2] #Segunda Coluna Inteira
e[ ,1:2]#Primeira Coluna Inteira + 1:2 que é primeira linha e primeira coluna inteiras 
e[1:2,1]#Primeira Linha  
as.data.frame(e) #Converte a Matriz para DataFrame


#Lista (é um tipo especial de Vetores de Diferentes Classes)
i <- list(2, 3, "c", "d", FALSE, 2+3i, 4+2i)
class (i)
class (i[1])
class(i[2])


#Ordenção de Dados
library(dslabs)
data(murders)
sort(murders$total)


x <- c(31,4,15,92,65)
x
sort(x) 
index <- order(x) #Pega os Elementos na Ordem Indexando
index
x[index] #Rearranja o "x" na ordem da função

order(x)
x

#Ordenando Por Estados e Nomes Abreviados
murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
murders$abb[index]

#Ordenando pelo Máximo e Mínimo
max(murders$total)
i_max <- which.max(murders$total) #I corresponde ao índice - Aqui pegamos o índice do estado cujo (which) tem a maior quantidade de assasinatos 
i_max
murders$state[i_max]

min(murders$total)
i_min <- which.min(murders$total) #I corresponde ao índice - Aqui pegamos o índice do estado cujo (which) tem a menor quantidade de assasinatos 
i_min
murders$state[i_min]


#Outros Exemplos - Ordenação de Dados
x <- c(31,4,15,92,65)
x
rank(x)



#Função sort vai ordenar por Elementos na ordem crescente
#Função order vai utilizar o sort para ordenar pela posição dos Elementos
#Função rank vai utilizar a base original e rankear de acordo com o valor
#Order responde a pergunta "No vetor original, qual a posição do 1º elemento após a ordenação?' Já a função "rank" mostra qual a posição dos elementos do vetor original... tipo "o 31 é o 3º menor"


#Exercícios 1
library(dslabs)
data(murders)
pop <- murders$population
pop
sort(pop)
pop_min <- which.min(murders$population)
pop_min
murders$population[51]

#Exercícios 2
pop <- murders$population
ord <- order(pop) 
ord[1]
murders$state[order(pop)[1]]


#Exercícios 3
temp <- c(35,88,42,84,81,30)
city <- c("Beijing","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")
city_temps <- data.frame(name = city, temperature = temp)
states <- murders$state
ranks <- rank(murders$population)
my_df <- data.frame(states = states, ranks = ranks)

my_df <- data.frame(ranks, murders$state)

ind <- order(murders$population)

my_df <- data.frame(states = states[ind], ranks = ranks[ind])
my_df


#Exercício 4
library (dslabs)
data(na_example)

#Examinando Dados
str(na_example)

#Encontrando Média
mean(na_example)

#Índice lógicpo que mostrará quais valores são NA
ind <- is.na(na_example)

#Calculando quantos valores NAs temos
sum(ind)


x <- c(1, 2 , 3)
ind <- c(FALSE, TRUE, FALSE)

#Exclamaçâo significa nâo alguma coisa
x[!ind]

#Exercício 5
library(dslabs)
data(na_example)
ind <- is.na(na_example)

#Nâo dá certo por que NA não é número
mean(na_example)

#Média dos que nâo sâo NA
mean(na_example[!ind])#Para calcular média quando no meio dos dados temos algum NA temos que utilizar a função: mean(na_example[!ind])


#Retomando Murders

#Qual estado possui a maior população
murders$state[which.max(murders$population)]

#Qual o maior valor de população entre os estados
max(murders$population)

#O justo para comparar a quantidade de assasinatos por armas de fogo
murders_rate <- murders$total / murders$population * 100000 #a cada 100mil habitantes 
murders_rate

#Nome do estado -> Ordenados pela taxa de assasinato na ordem decrescente.
murders$state[order(murders_rate, decreasing = TRUE)]

#Exercício 6 
city <- c("Pequim","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")
temp <- c(35,88,42,84,81,30)
c = 5/9 * (temp-32)
city_temps <- data.frame(city,c)
data.frame(city_temps)

x <- (1:100)
x
sum(1/x^2)


#Retomando cálculos usando Murders
murders_rate <- murders$total / murders$population * 100000 #a cada 100mil habitantes 
murders_rate
mean(murders_rate) #Cálculando basicamente a média das médias

#Calculando a média total
total <- sum(murders$total)
pop <- sum(murders$population)
total/pop



#Parte 2 Conteúdo

murder_rate <- murders$total/murders$population*100000
index <- murders_rate < 0.71
class(index)
sum(index)
#Para saber quantos estados tem a taxa de homicidios abaixo de 0.71
murders$state[index]

#Só vai ser verdadeiro se tudo for verdadeiro
TRUE & TRUE
TRUE & FALSE
FALSE & FALSE


#Se qualquer um for verdadeiro vai dar verdadeiro
TRUE | TRUE
TRUE | FALSE
FALSE | FALSE

#Combinando Vetores

#Estado que seja na região Oeste dos EUA e tenha murder_rate menor ou igual a 1

west <- murders$region == "West"
safe <- murders_rate <= 1
index <- safe & west
murders$state[index]

#Which trabalha com índices "Quais sâo verdadeiros?"
x <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
which(x)
index <- which(murders&states == "Massachussets")
 

#Funcao match compara um vetor com o outro

index <- match(c("New York" ,"Florida", "Texas"), murders$state)
index
murders$state[index]

#Verifica se cada elemento está no outro vetor 

%in%

x <- c("a","b","c","d","e")
y <- c("a","d","f")

x %in% y
 
c("Boston", "Dakota", "Washington") %in% murders$state


#Exercícios
murders_rate <- murders$total/murders$population*100000
low <- murders_rate < 1
which(low)
murders$state[low]

northeast <- murders$region == "Northeast"
index <- low & northeast
murders$state[index]
index

media_murders_rate<- mean(murders_rate)
sum(murders_rate<mean(murders_rate))

abbs <- c("AK", "MI", "IA")

match(c("AK", "MI", "IA"), murders$abb)
murders$state


#Exercicio Funcao In

abbs <- c("MA", "ME", "MI", "MO", "MU")
abreviacoes_murders <- murders$abb
abbs %in% abreviacoes_murders
abreviacoes_murders %in% abbs 

ind <- which(!abbs%in%murders$sabb)
abbs[ind]


