# Sistema de gestão de listas

Este trabalho deve ser detectar padrões de texto em listas de afazeres. 

- Reconhecer Horários:
  - 10:30, 10 30, 10 horas, 1 hora, às 10
- Reconhecer dias e datas:
  - 28 de Fevereiro, 13 de agosto de 2021, 30/01, 20/04/2022, hoje, amanhã, depois de amanhã
  - Alguns pequenos erros
  - 18 agosto, 18 de agosto 2023
- Reconhecer tags:
  - #casa, #trabalho, etc.
- URLs:
  - https://sp.senac.br/pag1#teste?aula=1&teste=4
- Emails:
  - jose.da-silva@sp.senac.br
- Ações escolhidas pelos alunos como verbos e conectores para identificar pessoas:
  - agendar, marcar, ligar, etc.

Exemplo de frase: Agendar com José reunião às 10:00 amanhã #trabalho

Exemplo de saída:
- Dia: 22/03/2022
- Horário: 10:00
- Pessoa: José
- Ação: Agendar

Mais detalhes no [Notion do Celso](https://crivelaro.notion.site/Regex-Reconhecedor-em-Lista-de-afazeres-514db4bb8d43463ca9d0bc988fc102c7)

