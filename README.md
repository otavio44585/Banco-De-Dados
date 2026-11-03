# Banco-De-Dados
projeto

# Projeto Escala Médica 🏥

Este projeto tem como objetivo expandir a base de dados relacional de um hospital fictício para gerir a alocação e a escala semanal dos médicos. O desafio principal consistiu em criar novas tabelas para gerir prédios, departamentos, turnos e alocações, garantindo a integridade dos dados sem alterar a estrutura das tabelas originais fornecidas.

## 📋 Descrição do Problema
O hospital opera em vários prédios e departamentos. Anteriormente, a escala dos médicos era gerida em planilhas, dificultando a localização exata de cada profissional. A base de dados original (`hospital.sqlite`) continha apenas os registos de médicos, especialidades e regimes de trabalho.

A nova modelação permite responder de forma eficiente à pergunta central do negócio: **"Em qual prédio e departamento o médico X está no dia Y, turno Z?"**

## 📂 Estrutura do Repositório

O repositório está organizado de forma rigorosa, separando a definição de dados, a manipulação, as consultas e a documentação:

- **`database/base/`**: Contém o ficheiro original `hospital.sqlite`.
- **`database/ddl/`**: Scripts de criação das novas tabelas (`predio`, `departamento`, `departamento_especialidade`, `turno`, `alocacao`).
- **`database/dml/`**: Scripts de inserção de dados para testes (prédios, departamentos, turnos e a escala de exemplo).
- **`database/queries/`**: Consultas SQL obrigatórias, incluindo a resposta à pergunta central e as validações de regras de negócio.
- **`docs/diagramas/`**: Diagramas de Entidade-Relacionamento (DER) Lógico e Conceitual do projeto.

## ⚙️ Regras de Negócio Implementadas

O modelo de dados foi construído para garantir as seguintes restrições lógicas:
1. **Sem conflito de horário (RN01):** Restrição `UNIQUE` aplicada para impedir que um médico tenha duas alocações no mesmo dia e turno.
2. **Especialidade compatível (RN02):** Consulta de validação para garantir que o médico só é alocado a departamentos que aceitam a sua especialidade.
3. **Carga do regime (RN03):** Consulta de validação para verificar se a soma das horas dos turnos não ultrapassa a carga semanal do médico.
4. **Dia da semana válido (RN04):** Restrição `CHECK` para garantir dias entre 1 (Segunda-feira) e 7 (Domingo).
5. **Departamento tem prédio (RN05):** Restrição de integridade `NOT NULL` na chave estrangeira do prédio.
6. **Integridade referencial (RN06):** Chaves estrangeiras (`FOREIGN KEY`) aplicadas rigorosamente nas alocações.

## 🚀 Como Executar

Para testar este projeto localmente, irá precisar de uma ferramenta compatível com SQLite (como o DB Browser for SQLite, DBeaver ou a extensão do SQLite para o VS Code).

1. Clone o repositório:
   ```bash
   git clone [https://github.com/SEU_USUARIO/projeto-escala-medica.git](https://github.com/SEU_USUARIO/projeto-escala-medica.git)

   **Como adicionar isto ao seu repositório:**
1. Abra a pasta `projeto-escala-medica` no VS Code ou num editor de texto.
2. Crie um novo ficheiro e dê-lhe exatamente o nome `README.md`.
3. Cole o texto acima (lembre-se de alterar o link no comando `git clone` para o link do seu próprio repositório).
4. Guarde o ficheiro e execute os comandos do Git (`git add .`, `git commit -m "Adiciona README"`, `git push`) para o enviar para a nuvem
