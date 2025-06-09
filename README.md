## Implementação do método Newton-Raphson em R

Código: [newton_raphson.R](newton_raphson.R)

Pseudo-código:
```
Função newton_raphson(x0, tolerancia, max_iteracoes)
    iteracao ← 0

    Enquanto iteracao < max_iteracoes faça
        f ← valor da função p em x0
        df ← valor da derivada dp em x0

        Se df = 0 então
            Imprimir "Erro: Derivada igual a zero na iteração", iteracao, "- método falhou."
            Retornar NULO
        FimSe

        Se |f| < tolerancia então
            Imprimir "Raiz encontrada:", x0
            Imprimir "Número de iterações:", iteracao
            Retornar x0
        FimSe

        x1 ← x0 - f / df

        Se |x1 - x0| < tolerancia então
            Imprimir "Raiz encontrada:", x1
            Imprimir "Número de iterações:", iteracao + 1
            Retornar x1
        FimSe

        x0 ← x1
        iteracao ← iteracao + 1
    FimEnquanto

    Imprimir "Erro: Método não convergiu após", max_iteracoes, "iterações."
    Retornar NULO
FimFunção

```
