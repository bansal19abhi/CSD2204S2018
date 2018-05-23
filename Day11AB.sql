MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.05 sec)

MariaDB [csd2204s18]> create view v1 as select * from products;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| orders               |
| persons              |
| products             |
| regions              |
| v1                   |
+----------------------+
15 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

MariaDB [csd2204s18]> create view v1 as select * from products where price > 100;
ERROR 1050 (42S01): Table 'v1' already exists
MariaDB [csd2204s18]> create or replace view v1 as select * from products where price > 100;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    2 | Memory     |   120 |            6 |
|    3 | ZIP drive  |   150 |            4 |
|    5 | Monitor    |   240 |            1 |
|    6 | DVD drive  |   180 |            2 |
|    8 | Printer    |   270 |            3 |
|   10 | DVD burner |   180 |            2 |
+------+------------+-------+--------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> insert into v1 values(20,'USB Port',89,2);
Query OK, 1 row affected (0.13 sec)

MariaDB [csd2204s18]> delete from v1 where cod=20;
ERROR 1054 (42S22): Unknown column 'cod' in 'field list'
MariaDB [csd2204s18]> delete from v1 where code=20;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> select * from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Printer         |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Printer         |    40 |            7 |
|   12 | Toner cartridge |    54 |            7 |
|   13 | DVD burner      |    78 |            7 |
|   20 | USB Port        |    89 |            2 |
+------+-----------------+-------+--------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v1 as select * from products where name like'%drive';
Query OK, 0 rows affected (0.06 sec)

MariaDB [csd2204s18]> select name price from products where name like'%drive';
+------------+
| price      |
+------------+
| Hard drive |
| ZIP drive  |
| DVD drive  |
| CD drive   |
+------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select name,price from products where name like'%drive';
+------------+-------+
| name       | price |
+------------+-------+
| Hard drive |   240 |
| ZIP drive  |   150 |
| DVD drive  |   180 |
| CD drive   |    90 |
+------------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v2 as select price, name from products where name like'%drive';
Query OK, 0 rows affected (0.06 sec)

MariaDB [csd2204s18]> select * from v2;
+-------+------------+
| price | name       |
+-------+------------+
|   240 | Hard drive |
|   150 | ZIP drive  |
|   180 | DVD drive  |
|    90 | CD drive   |
+-------+------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select * from v1;
+------+------------+-------+--------------+
| Code | Name       | Price | Manufacturer |
+------+------------+-------+--------------+
|    1 | Hard drive |   240 |            5 |
|    3 | ZIP drive  |   150 |            4 |
|    6 | DVD drive  |   180 |            2 |
|    7 | CD drive   |    90 |            2 |
+------+------------+-------+--------------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select products.code, products.name, manu.name from manu inner join products on products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB Port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.03 sec)

MariaDB [csd2204s18]> select products.code, products.name "Products", manu.name "Manufacturer" from manu inner join products on products.manufacturer = manu.code;
+------+-----------------+-------------------+
| code | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB Port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v3 select products.code, products.name "Products", manu.name "Manufacturer" from manu inner join products on products.manufacturer = manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select products.code, products.name "Products", manu.name "Manufacturer" from ma' at line 1
MariaDB [csd2204s18]> create or replace view v3 as select products.code, products.name "Products", manu.name "Manufacturer" from manu inner join products on products.manufacturer = manu.code;
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from v3;
+------+-----------------+-------------------+
| code | Products        | Manufacturer      |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           |
|    2 | Memory          | Winchester        |
|    3 | ZIP drive       | Iomega            |
|    4 | Floppy disk     | Winchester        |
|    5 | Monitor         | Sony              |
|    6 | DVD drive       | Creative Labs     |
|    7 | CD drive        | Creative Labs     |
|    8 | Printer         | Hewlett-Packard   |
|    9 | Toner cartridge | Hewlett-Packard   |
|   10 | DVD burner      | Creative Labs     |
|   11 | Printer         | moxDroid Labs Inc |
|   12 | Toner cartridge | moxDroid Labs Inc |
|   13 | DVD burner      | moxDroid Labs Inc |
|   20 | USB Port        | Creative Labs     |
+------+-----------------+-------------------+
14 rows in set (0.00 sec)

MariaDB [csd2204s18]> select firdt_name, last_name, salary from employees where salary > all(select avg(salary) from employees group by department_id);
ERROR 1054 (42S22): Unknown column 'firdt_name' in 'field list'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > all(select avg(salary) from employees group by department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> create or replace view v4 as select first_name, last_name, salary from employees where salary > all(select avg(salary) from employees group by department_id);
Query OK, 0 rows affected (0.05 sec)

MariaDB [csd2204s18]> select * from v4;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> drop view if exists v1;
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| c1                   |
| c3                   |
| countries            |
| customer             |
| departments          |
| employees            |
| job_history          |
| jobs                 |
| locations            |
| manu                 |
| orders               |
| persons              |
| products             |
| regions              |
| v2                   |
| v3                   |
| v4                   |
+----------------------+
17 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit;
