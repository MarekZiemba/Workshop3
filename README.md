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
- 
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

