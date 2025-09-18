# NeanderX

Programa: Somando Valores Armazenados
📌 Descrição

Este programa em Assembly para o processador NeanderX realiza a leitura de dois valores inseridos pelo usuário via teclado, soma esses valores e exibe o resultado no visor.

O fluxo do programa é dividido em três partes principais:

Leitura do primeiro valor.

Leitura do segundo valor.

Cálculo da soma e exibição do resultado.

⚙️ Funcionamento

O programa utiliza as variáveis X, Y e Z, armazenadas nos endereços de memória 128, 129 e 130.

X: primeiro valor digitado.

Y: segundo valor digitado.

Z: resultado da soma.

O código conta com três loops de espera para garantir que os valores sejam lidos corretamente antes de prosseguir.

Etapas:

LOOP1 – Espera e lê o primeiro valor digitado, armazenando em X.

LOOP2 – Espera e lê o segundo valor digitado, armazenando em Y.

Soma – O acumulador (AC) carrega o valor de X, soma com Y e guarda o resultado em Z.

LOOP3 – Espera e, ao receber sinal, mostra o valor de Z no visor.

🧾 Instruções Importantes

IN 01: Verifica se há entrada disponível.

IN 00: Lê o valor do teclado.

OUT 00: Exibe valor no visor.

STA: Armazena valor do AC em memória.

LDA: Carrega valor da memória no AC.

ADD: Soma o valor da memória ao AC.

JZ: Pula para o endereço se AC = 0.

HLT: Finaliza a execução.

📊 Exemplo de Execução

Usuário digita 5 → armazenado em X.

Usuário digita 3 → armazenado em Y.

O programa calcula 5 + 3 = 8.

Resultado 8 é exibido no visor.

🏗 Estrutura do Código

Declaração de variáveis (X, Y, Z).

Loops de entrada (LOOP1, LOOP2, LOOP3).

Soma dos valores.

Exibição do resultado.

Constante de espera (ESPERA).
