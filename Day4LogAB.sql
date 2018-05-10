MariaDB [(none)]> USE CSD2204S18
Database changed
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
6 rows in set (0.13 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.16 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C02','Bob Marley',Bm','Toronto','100100',23);
    '> INSERT INTO Customer VALUES('C02','Bob Marley','Bm','Toronto','100100',23);
    '> ;
    '> INSERT INTO Customer VALUES('C02','Bob Marley','Bm','Toronto','100100',23);
    '> '
    -> ,
    -> INSERT INTO Customer VALUES('C02','Bob Marley','Bm','Toronto','100100',23);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '','Toronto','100100',23);
INSERT INTO Customer VALUES('C02','Bob Marley','Bm','T' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C02','Bob Marley','BM','Toronto','100100',23);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C03','Cherlies Theron','Cher','Ney York','120134',20);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C04','Denial Jack','DJ','Brazil','341020',25);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C05','Donna Newman','New.','Toronto','130120',50);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C06','Eston M.','M.','Toronto','201023',65);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C07','Bobby Chacko','Chac','New York','320300',70);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C08','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C09','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C10','Jack Sp','Sparrow','New Jersey','102301',35);
Query OK, 1 row affected (0.03 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,nickname From Customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob Marley      | BM       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New.     |
| Eston M.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
| Jack Sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city,postalCode From Customer;
+------------+------------+
| city       | postalCode |
+------------+------------+
| WDC        | 321200     |
| Toronto    | 100100     |
| Ney York   | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New York   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New Jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name = 'Ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname = 'AK';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE name = 'Eston M.';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city From Customer WHERE city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city From Customer WHERE city!='Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | Ney York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT name,city,age From Customer WHERE age=50;
+--------------+---------+------+
| name         | city    | age  |
+--------------+---------+------+
| Donna Newman | Toronto |   50 |
+--------------+---------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city,age From Customer WHERE age<50;
+-----------------+------------+------+
| name            | city       | age  |
+-----------------+------------+------+
| Ashley          | WDC        |   34 |
| Bob Marley      | Toronto    |   23 |
| Cherlies Theron | Ney York   |   20 |
| Denial Jack     | Brazil     |   25 |
| Jack Sp         | New Jersey |   35 |
+-----------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city,age From Customer WHERE age>50;
+---------------+----------+------+
| name          | city     | age  |
+---------------+----------+------+
| Eston M.      | Toronto  |   65 |
| Bobby Chacko  | New York |   70 |
| Ashko Charles | USA      |   72 |
| Tony Special  | GTA      |   62 |
+---------------+----------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where name > 'Ashley';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE name = 'Ashley' OR city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city='Toronto' OR city='New York';
+--------------+----------+
| name         | city     |
+--------------+----------+
| Bob Marley   | Toronto  |
| Donna Newman | Toronto  |
| Eston M.     | Toronto  |
| Bobby Chacko | New York |
+--------------+----------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city='Toronto' & age>50;
Empty set, 20 warnings (0.02 sec)

MariaDB [CSD2204S18]> SELECT name,age FROM Customer WHERE city='Toronto' AND age > 50;
+----------+------+
| name     | age  |
+----------+------+
| Eston M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where city = 'Toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob Marley   | BM       | Toronto | 100100     |   23 |
| C05    | Donna Newman | New.     | Toronto | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) FROM Customer where city = 'Toronto';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Number of Customers in Toronto" FROM Customer where city = 'Toronto';
+--------------------------------+
| Number of Customers in Toronto |
+--------------------------------+
|                              3 |
+--------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "Number of Customers Older than 50" FROM Customer where age > 50;
+-----------------------------------+
| Number of Customers Older than 50 |
+-----------------------------------+
|                                 4 |
+-----------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where age > 30 AND age < 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C05    | Donna Newman | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where age BETWEEN 30 AND 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C05    | Donna Newman | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where age NOT BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | BM       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age) FROM Customer;;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.03 sec)

ERROR: No query specified

MariaDB [CSD2204S18]> SELECT min(age) FROM Customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT avg(age) FROM Customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer where name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob Marley   | BM       | Toronto  | 100100     |   23 |
| C07    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where name NOT LIKE 'B%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where name NOT LIKE '%n';
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley    | BM       | Toronto    | 100100     |   23 |
| C04    | Denial Jack   | DJ       | Brazil     | 341020     |   25 |
| C06    | Eston M.      | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko  | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where name LIKE '%n';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
| C05    | Donna Newman    | New.     | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer where city LIKE 'n%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE '__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New.     | Toronto | 130120     |   50 |
| C09    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name LIKE '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New.     | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer LIMIT 4;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer LIMIT 2;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | Ashley     | Ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley | BM       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age IN (20, 25, 65, 72);
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age NOT IN (20, 25, 65, 72);
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley   | BM       | Toronto    | 100100     |   23 |
| C05    | Donna Newman | New.     | Toronto    | 130120     |   50 |
| C07    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city IN ('Toronto', 'GTA', 'USA', 'WDC');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley    | BM       | Toronto | 100100     |   23 |
| C05    | Donna Newman  | New.     | Toronto | 130120     |   50 |
| C06    | Eston M.      | M.       | Toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| Toronto       |
| Ney York      |
| Brazil        |
| New York      |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
8 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT(city)) 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
|             8 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age DESC LIMIT 1 ;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age DESC LIMIT 1 ;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1 ;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t ORDER BY age ASC LIMIT 1 ;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1 ;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob Marley | BM       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT avg(age)+10*20/2 FROM Customer;
+------------------+
| avg(age)+10*20/2 |
+------------------+
|         145.6000 |
+------------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> EXIT;
