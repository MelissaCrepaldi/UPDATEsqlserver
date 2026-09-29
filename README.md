# Projeto SQL Server - Gestão de Carros e Vendedores 🚗💨

Repositório criado para praticar e demonstrar comandos em **Microsoft SQL Server**, contemplando criação de bancos de dados, tabelas relacionais, inserções, atualizações (`UPDATE`), chaves estrangeiras (`FOREIGN KEY`) e consultas (`SELECT`).

---

## 🛠️ Estrutura do Banco de Dados (`carro_db`)

O projeto é composto por duas tabelas principais interligadas por relacionamento:

### 1. `tbl_carros`
Armazena informações sobre os veículos cadastrados.
* **placa** (VARCHAR 7) - Chave Primária (`PRIMARY KEY`)
* **marca** (VARCHAR 30)
* **modelo** (VARCHAR 20)
* **ano** (INT)
* **combustivel** (VARCHAR 1)

### 2. `tbl_vendedores`
Armazena informações sobre os vendedores e faz referência ao carro que possuem/utilizam.
* **codigo** (INT) - Chave Primária (`PRIMARY KEY`)
* **nome** (VARCHAR 100)
* **carro** (VARCHAR 7) - Chave Estrangeira (`FOREIGN KEY` referenciando `tbl_carros.placa`)
* **cidade** (VARCHAR 50)
* **estado** (VARCHAR 50)
* **comissao** (DECIMAL 10,2)

---

## 🚀 Como Executar o Script

1. Abra o seu gerenciador do SQL Server (como o *SQL Server Management Studio - SSMS* ou *Azure Data Studio*).
2. Copie os comandos de criação de banco, tabelas, inserções de dados e os comandos de `UPDATE` presentes nos scripts deste repositório.
3. Execute as consultas passo a passo para verificar a criação das tabelas e a atualização das chaves estrangeiras dos vendedores.
