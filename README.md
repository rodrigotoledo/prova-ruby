# Teste Agence

## Pré-requisitos

- Faça o FORK do projeto
- Banco de dados postgresql
  - Criar uma tabela chamada cars com as colunas id (serial), car_number (varchar), license_plate(varchar), registration_date(data)
- RVM
- Conhecimentos com testes

## Objetivos

Este projeto é algo que um desenvolvedor pode encontrar em seu dia a dia e exemplifica o que acreditamos ser qualidades para lidar com um determinado projeto usando testes.

Deverá então criar uma aplicação que consiga ler um arquivo csv relativamente grande e importar para a tabela cars. A estrutura da tabela representa o chassi (car_number), placa (license_plate) e data do emplacamento (registration_date)
Regras:

- Não podem existir dois carros com a mesma placa ou chassi. Encontrando duplicatas deve manter data mais atual.
- Os testes serão levados em consideração como pontos positivos.

1 - Instale a versão 2.2.2 usando rvm

```
rvm install 2.2.2
```

2 - Baixe o projeto e entre na pasta para criar a gemset automaticamente

```
git clone https://github.com/rodrigotoledo/prova-ruby.git
cd prova-ruby
```

3 - Instale o bundler

```
gem install bundler
```

4 - Instale faça o setup das gems do projeto

```
bundle
```

5 - Para executar os testes execute

```
bundle exec rspec
```

6 - Organização do projeto

- config
  - Configuração do banco de dados
- download
  - Exemplos de arquivo a ser importado
- lib
  - Conexão com o banco de dados
  - Biblioteca de importação com conexão ao banco
  - Classe para log
- log
  - Log de importações
- spec
  - Testes

7 - Rode a importação

```
ruby import.rb
```

8 - Extras

- A classe Log é auxiliar ao projeto e pode ajudar a entender o que está acontecendo no decorrer do código.
- Use mocha ou outra gem para simular dados. Não há necessidade de criar um banco de testes.
- Tem idéias para melhorar o projeto? Let me know!
