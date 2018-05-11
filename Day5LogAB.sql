MariaDB [(none)]> USECSD2204S18;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'USECSD2204S18' at line 1
MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.05 sec)

MariaDB [CSD2204S18]> CREATE TABLE Persons (
    -> ID integer(3),
    -> LastName varchar(225) NOT NULL;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 3
MariaDB [CSD2204S18]> CREATE TABLE Persons (
    -> ID integer(3),
    -> LastName varchar(225) NOT NULL,
    -> FirstName varchar(225) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
    -> );
Query OK, 0 rows affected (0.63 sec)

MariaDB [CSD2204S18]> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(225) | NO   | PRI | NULL    |       |
| FirstName | varchar(225) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.09 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABEL Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(PersonID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'TABEL Orders (
OrderID integer(3) NOT NULL,
OrderNumber integer(3) NOT NULL,
Per' at line 1
MariaDB [CSD2204S18]> CREATE TABLE Persons (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> REFERENCES Persons(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REFERENCES Persons(ID)
)' at line 6
MariaDB [CSD2204S18]> CREATE TABLE Order (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Order (
OrderID integer(3) NOT NULL,
OrderNumber integer(3) NOT NULL,
PersonID i' at line 1
MariaDB [CSD2204S18]> CREATE TABLE Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.64 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE c1 AS SELECT * FROM Customer;
Query OK, 10 rows affected (0.69 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> CREATE TABLE c2 AS SELECT name,postalCode FROM Customer WHERE city = "Toronto";
Query OK, 3 rows affected (0.23 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELSECT * FROM c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELSECT * FROM c1' at line 1
MariaDB [CSD2204S18]> SELECT * FROM c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c2                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> CREATE TABLE c3 LIKE Customer;
Query OK, 0 rows affected (0.22 sec)

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO c3 SELSECT * FROM c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SELSECT * FROM c3' at line 1
MariaDB [CSD2204S18]> INSERT INTO c3 SELECT * FROM c3;
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO c3 SELECT * FROM Customer;
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> alter table c3 and column country varchar(100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'and column country varchar(100)' at line 1
MariaDB [CSD2204S18]> alter table c3 add column country varchar(100);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custId     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN Country VARCHAR(40);
Query OK, 10 rows affected (0.55 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DECS c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DECS c3' at line 1
MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY COLUMN country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER COLUMN c3 CHANGE COLUMN CUSTiD CUSTOMERid Varchar(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'COLUMN c3 CHANGE COLUMN CUSTiD CUSTOMERid Varchar(5)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c3 CHANGE COLUMn custId customerID VARCHAR(5);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 DROP COLUMN nickname;
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (2.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> decs c1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'decs c1' at line 1
MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 add primary key(custID);
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE c1 drop primary key(custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custID)' at line 1
MariaDB [CSD2204S18]> ALTER TABLE c1 drop (custID);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(custID)' at line 1
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> 
MariaDB [CSD2204S18]> ALTER TABLE c2 DROP PRIMARY KEY;
ERROR 1091 (42000): Can't DROP 'PRIMARY'; check that column/key exists
MariaDB [CSD2204S18]> ALTER TABLE c1 DROP PRIMARY KEY;
Query OK, 10 rows affected (0.58 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> desc Pesons;
ERROR 1146 (42S02): Table 'csd2204s18.pesons' doesn't exist
MariaDB [CSD2204S18]> desc Persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(225) | NO   | PRI | NULL    |       |
| FirstName | varchar(225) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | NULL    |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | NULL    |
| C03        | Cherlies Theron | Ney York   | 120134     |   20 | NULL    |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | NULL    |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | NULL    |
| C06        | Eston M.        | Toronto    | 201023     |   65 | NULL    |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | NULL    |
| C08        | Ashko Charles   | USA        | 421044     |   72 | NULL    |
| C09        | Tony Special    | GTA        | 418921     |   62 | NULL    |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country = 'USA';
Query OK, 10 rows affected (0.05 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | USA     |
| C03        | Cherlies Theron | Ney York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | USA     |
| C06        | Eston M.        | Toronto    | 201023     |   65 | USA     |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country = 'CANADA' where city IN ('TORONTO','GTA');
Query OK, 4 rows affected (0.09 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalCode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | CANADA  |
| C03        | Cherlies Theron | Ney York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | CANADA  |
| C06        | Eston M.        | Toronto    | 201023     |   65 | CANADA  |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | CANADA  |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c3 SET country = 'SOUTH AMERICA' where city IN ('Brazil');
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalCode | age  | country       |
+------------+-----------------+------------+------------+------+---------------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA           |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | CANADA        |
| C03        | Cherlies Theron | Ney York   | 120134     |   20 | USA           |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | SOUTH AMERICA |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | CANADA        |
| C06        | Eston M.        | Toronto    | 201023     |   65 | CANADA        |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA           |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA           |
| C09        | Tony Special    | GTA        | 418921     |   62 | CANADA        |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.02 sec)

MariaDB [CSD2204S18]> DELETE FROM c2 WHERE name LIKE 'Bob%';
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S18]> SELECT * from c2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> DROP TABLE c2;
Query OK, 0 rows affected (0.16 sec)

MariaDB [CSD2204S18]> SHOW TABLES:
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':' at line 1
MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| customer             |
| orders               |
| persons              |
+----------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE c1 SET custId= 1 WHERE age >= 50;
Query OK, 5 rows affected (0.06 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [CSD2204S18]> SELECT * from c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| 1      | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| 1      | Eston M.        | M.       | Toronto    | 201023     |   65 |
| 1      | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| 1      | Ashko Charles   | AK       | USA        | 421044     |   72 |
| 1      | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * from c1 WHERE custId IS NULL;
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * from c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| 1      | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| 1      | Eston M.        | M.       | Toronto    | 201023     |   65 |
| 1      | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| 1      | Ashko Charles   | AK       | USA        | 421044     |   72 |
| 1      | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

