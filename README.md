# Workshop 3 - Aplikacja - Aplikacja "UsersCRUD".

# Jest to aplikacja webowa, która umożliwia zarządzanie użytkownikami.
Dane do zasilenia programu pobierać z bazy danych MySQL. Wykorzystuje klasy User oraz UserDao.
# Do połączenia z baza danych wykorzystuje klase DbUtil.
# Obiekty klasy User
będą miały swoją reprezentację w bazie danych i posiada atrybuty (wszystkie prywatne):
- id
- userName
- email
- password
# Baza danych w tabeli "users" zawieta kolumny:
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id               | int(11)      | NO   | PRI | NULL    | auto_increment |
| email            | varchar(255) | NO   | UNI | NULL    |                |
| username         | varchar(255) | NO   |     | NULL    |                |
| password         | varchar(60)  | NO   |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
# Klasa UserDao 
wykonuje operacje na bazie danych. Zawiera przygotowane zapytania:
- dodawanie użytkownika,
- zmiana danych,
- pobieranie po id,
- usuwanie po id,
- pobieranie wszystkich użytkowników.

Dzięki dodatkowej metodzie, utworzonej w ramach klasy UserDao, o nazwie hashPassword, będziemy haszować hasło użytkownika,
aby było przygotowane do zapisania w bazie danych. Korzystamy z implementacji algorytmu Blowfish – JBCrypt: 
http://www.mindrot.org/projects/jBCrypt/

# Do projektu wykorzystany jest gotowy szablon o nazwie SB Admin 2 zawierający html oraz css.
https://startbootstrap.com/themes/sb-admin-2/
Szablon należy pobrać z powyższej strony.
Szablon ten korzysta z biblioteki css/js: https://getbootstrap.com/
W dokumentacji znajdziemy przykłady elementów, jakie są dostępne, np. formularze:
https://getbootstrap.com/docs/4.4/components/forms/
Niektóre jego elementy są wykorzystane w aplikacji
W katalogu webapp, w podkatalog theme umieszczone są pliki css, js niezbędne do poprawnego działania szablonu.


# IN ENGLISH:

Workshop 3 - Application - "UsersCRUD" Application.
This is a web application that allows managing users.
The program retrieves data from a MySQL database and utilizes the User and UserDao classes.

It uses the DbUtil class to establish a connection with the database.
Objects of the User class
will have their representation in the database and possess attributes (all private):

id
userName
email
password
The "users" table in the database contains columns:
+------------------+--------------+------+-----+---------+----------------+
| Field | Type | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+----------------+
| id | int(11) | NO | PRI | NULL | auto_increment |
| email | varchar(255) | NO | UNI | NULL | |
| username | varchar(255) | NO | | NULL | |
| password | varchar(60) | NO | | NULL | |
+------------------+--------------+------+-----+---------+----------------+

The UserDao class
performs operations on the database. It contains prepared queries for:

adding a user,
updating data,
retrieving by id,
deleting by id,
retrieving all users.
Thanks to an additional method created within the UserDao class called hashPassword, we will hash the user's password
so that it is ready to be saved in the database. We use the Blowfish algorithm implementation - jBCrypt:
http://www.mindrot.org/projects/jBCrypt/

The project utilizes a ready-made template called SB Admin 2 containing HTML and CSS.
https://startbootstrap.com/themes/sb-admin-2/
The template should be downloaded from the above website.
This template uses the css/js library: https://getbootstrap.com/
In the documentation, we can find examples of available elements, e.g. forms:
https://getbootstrap.com/docs/4.4/components/forms/
Some of its elements are used in the application.
In the webapp directory, in the theme subdirectory, necessary css and js files for the proper operation of the template are located.