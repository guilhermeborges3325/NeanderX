# NeanderX

Somando Valores Armazenados
Este programa em linguagem de montagem é um exemplo simples que realiza a soma de dois valores de entrada e exibe o resultado. O código foi escrito para um sistema que usa uma arquitetura de CPU com um Acumulador (AC) e portas de entrada e saída.

Funcionalidades
Entrada de Dados: Lê dois valores numéricos inseridos pelo usuário através de uma porta de entrada (IN 00).

Soma: Armazena os dois valores, soma-os e salva o resultado em uma variável.

Saída de Dados: Exibe o resultado da soma em um visor ou porta de saída (OUT 00).

Como o Código Funciona
Declaração de Variáveis: As variáveis X, Y, e Z são alocadas em endereços de memória específicos para armazenar o primeiro valor, o segundo valor e o resultado, respectivamente.

Primeiro Loop (LOOP1): O programa entra em um loop infinito esperando por uma entrada de teclado. Assim que um valor é lido, ele é armazenado na variável X.

Segundo Loop (LOOP2): De forma semelhante, o programa espera pela entrada do segundo valor, que é armazenado na variável Y.

Soma (LDA X e ADD Y): O valor de X é carregado no Acumulador (AC), e em seguida o valor de Y é somado a ele. O resultado é então armazenado na variável Z.

Terceiro Loop (LOOP3): O programa espera por um novo comando para exibir o resultado, que é então carregado do Z e enviado para a saída.

Fim do Programa (HLT): O programa é finalizado.

Estrutura do Código
Snippet de código

; Declaração de variáveis
X       EQU 128
Y       EQU 129
Z       EQU 130

; Início do programa
ORG 0

; Loop para ler o primeiro valor
LOOP1:
    IN   01
    ADD  ESPERA
    JZ   LOOP1
    IN   00
    STA  X
    OUT  00

; Loop para ler o segundo valor
LOOP2:
    IN   01
    ADD  ESPERA
    JZ   LOOP2
    IN   00
    STA  Y
    OUT  00

; Soma X + Y
    LDA  X
    ADD  Y
    STA  Z

; Loop para mostrar o resultado
LOOP3:
    IN   01
    ADD  ESPERA
    JZ   LOOP3
    LDA  Z
    OUT  00
    HLT

; Constante de espera
ESPERA: DB 0

; Fim do arquivo
END LOOP1
