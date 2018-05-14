MariaDB [(none)]> USE CSD2204S18;
Database changed
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

MariaDB [CSD2204S18]> SELECT * FROM Customers;
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name ASC;
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
10 rows in set (0.00 sec)

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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer limit 3;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob Marley      | BM       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId DECS limit 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DECS limit 3' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId DESC limit 3;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special  | Specie   | GTA        | 418921     |   62 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId DESC limit 3 ORDER BY ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ORDER BY ASC' at line 1
MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY custId DESC limit 3 ORDER BY ASC) t ORDER BY custId ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ASC) t ORDER BY custId ASC' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer(SELECT * FROM Customer ORDER BY custId DESC limit 3 ORDER BY ASC) t ORDER BY custId ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(SELECT * FROM Customer ORDER BY custId DESC limit 3 ORDER BY ASC) t ORDER BY cu' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer(SELECT * FROM Customer limit 3 ORDER BY ASC) t ORDER BY custId ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(SELECT * FROM Customer limit 3 ORDER BY ASC) t ORDER BY custId ASC' at line 1
MariaDB [CSD2204S18]> SELECT * FROM Customer GROUP BY City;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city FROM Customer GROUP BY City;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New York   |
| Ney York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(city) "Unique Cities" FROM Customer GROUP BY City;
+---------------+
| Unique Cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             1 |
|             1 |
|             3 |
|             1 |
|             1 |
+---------------+
8 rows in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City;
+------------+------------------+
| city       | No. of Customers |
+------------+------------------+
| Brazil     |                1 |
| GTA        |                1 |
| New Jersey |                1 |
| New York   |                1 |
| Ney York   |                1 |
| Toronto    |                3 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City HAVING city LIKE 'New%';
+------------+------------------+
| city       | No. of Customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                1 |
+------------+------------------+
2 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City HAVING city LIKE 'New%' OR city = 'Toronto';
+------------+------------------+
| city       | No. of Customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                1 |
| Toronto    |                3 |
+------------+------------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City HAVING city HAVING COUNT(city) > 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'HAVING COUNT(city) > 2' at line 1
MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City HAVING COUNT(city) > 2;
+---------+------------------+
| city    | No. of Customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of Customers" FROM Customer GROUP BY City HAVING COUNT(city) < 2;
+------------+------------------+
| city       | No. of Customers |
+------------+------------------+
| Brazil     |                1 |
| GTA        |                1 |
| New Jersey |                1 |
| New York   |                1 |
| Ney York   |                1 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New.     | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP 'n$';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
| C05    | Donna Newman    | New.     | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^..e';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalCode REGEXP '^[0-9]';
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalCode REGEXP '^[A-B]';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalCode REGEXP '^[0-5]';
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalCode REGEXP '^[0-1]';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A*';
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A?';
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

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE postalCode rLIKE '^[0-1]';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:15 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> ALTER TABLE Customer ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------+
| custId | name            | nickname | city       | postalCode | age  | dob  |
+--------+-----------------+----------+------------+------------+------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 | NULL |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 | NULL |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 | NULL |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1991-01-10 WHERE custId = 'C01';
    '> 
    '> UPDATE Customer SET dob = '1991-01-10' WHERE custId = 'C01';
    '> ;
    '> '
    -> 
    -> '
    '> ;
    '> SELECT * FROM Customer;
    '> ;
    '> '
    -> ';
    '> 
    '> /
    '> UPDATE Customer SET dob = '1991-01-10' WHERE custId = 'C01';
    '> UPDATE Customer SET dob = '1991-01-10' WHERE custId = 'C01';
    '> 
    '> 
    '> '
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'C01';

UPDATE Customer SET dob = '1991-01-10' WHERE custId = 'C01';
;
'

'
;
SEL' at line 1
MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1991-01-10' WHERE custId = 'C01';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-04-15' WHERE custId = 'C02';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1994-05-09' WHERE custId = 'C03';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-11-03' WHERE custId = 'C04';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-01-16' WHERE custId = 'C05';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-10-22' WHERE custId = 'C06';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1992-11-07' WHERE custId = 'C07';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1996-05-07' WHERE custId = 'C08';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1985-08-28' WHERE custId = 'C09';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> UPDATE Customer SET dob = '1995-07-17' WHERE custId = 'C10';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob Marley      | BM       | Toronto    | 100100     |   23 | 1996-04-15 |
| C03    | Cherlies Theron | Cher     | Ney York   | 120134     |   20 | 1994-05-09 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1995-11-03 |
| C05    | Donna Newman    | New.     | Toronto    | 130120     |   50 | 1995-01-16 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1995-10-22 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1992-11-07 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1996-05-07 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEA,dob,CURDATE()) FROM Customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'YEA,dob,CURDATE()) FROM Customer' at line 1
MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) FROM Customer;
+-----------------+------------+-----------------------------------+
| name            | dob        | TIMESTAMPDIFF(YEAR,dob,CURDATE()) |
+-----------------+------------+-----------------------------------+
| Ashley          | 1991-01-10 |                                27 |
| Bob Marley      | 1996-04-15 |                                22 |
| Cherlies Theron | 1994-05-09 |                                24 |
| Denial Jack     | 1995-11-03 |                                22 |
| Donna Newman    | 1995-01-16 |                                23 |
| Eston M.        | 1995-10-22 |                                22 |
| Bobby Chacko    | 1992-11-07 |                                25 |
| Ashko Charles   | 1996-05-07 |                                22 |
| Tony Special    | 1985-08-28 |                                32 |
| Jack Sp         | 1995-07-17 |                                22 |
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(DAY,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1991-01-10 |  9986 |
| Bob Marley      | 1996-04-15 |  8064 |
| Cherlies Theron | 1994-05-09 |  8771 |
| Denial Jack     | 1995-11-03 |  8228 |
| Donna Newman    | 1995-01-16 |  8519 |
| Eston M.        | 1995-10-22 |  8240 |
| Bobby Chacko    | 1992-11-07 |  9319 |
| Ashko Charles   | 1996-05-07 |  8042 |
| Tony Special    | 1985-08-28 | 11947 |
| Jack Sp         | 1995-07-17 |  8337 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1995-11-03 |   22 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer HAVING age = 22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer WHERE TIMESTAMPDIFF(YEAR,dob,CURDATE()) = 22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Denial Jack   | 1995-11-03 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
+---------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> EXIT;
