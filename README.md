# Problema-do-Miojo

> Daniel Machado

## Problema do Miojo:

> João é um fanático por miojos; ele os adora, e, como era de se esperar, ele levou vários pacotes quando foi acampar com seus colegas. Como João só gosta de miojos feitos com o tempo exato, ele se deseperou ao perceber que havia esquecido seu relógio em casa.

Por sorte, ele conseguiu, no caminho, comprar duas ampulhetas de durações diferentes. Por exemplo, se o miojo precisa de 3 minutos para ficar pronto, e João tiver uma ampulheta de 5 minutos e outra de 7, uma possível forma de cozinhar o miojo é:

- João começa virando as duas ampulhetas ao mesmo tempo.
- Quando a areia da ampulheta de 5 minutos se esgotar, João torna a virá-la.
- João começa a preparar o miojo quando a areia da ampulheta de 7 minutos acabar.
- João tira o miojo do fogo quando a ampulheta de 5 minutos acabar novamente.
- Dessa forma, o miojo ficará 3 minutos no fogo (do minuto 7 ao minuto 10).

Assim, apesar do miojo levar apenas três minutos para ser cozido, ele precisa de 10 minutos para ficar pronto.

Faça um programa que, dado o tempo de preparo do miojo, e os tempos das duas ampulhetas (ambos maiores que o tempo do miojo), determina o tempo mínimo necessário para o miojo ficar pronto ou se não é possível cozinhar o miojo no tempo exato com as ampulhetas disponíveis.

## Running this code:

```sh
rspec miojo_rspec.rb
```

## @Comentários Pessoais:

no problema código que eu fiz, pensei numa lógica mais simples, chegando à: 

```ruby
min = [@hourglass1, @hourglass2].min
max = [@hourglass1, @hourglass2].max
min *= 2

cooking_time = min - max
```

mas em segunda análise deparei com a seguinte situação, tempos maiores que 10, começaram a dar erro, para corrigir, comecei a estudar o fator de mdc (para achar a verificação a solução entre o minimo dos tempos com o tempo da ambulheta). Enfim o código pode ser visto no seguinte arquivo: 

* ### [miojo.rb](./miojo.rb)