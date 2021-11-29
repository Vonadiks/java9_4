/*
ошибки в расписании (фильмы накладываются друг на друга), отсортированные по возрастанию времени.
Выводить надо колонки «фильм 1», «время начала», «длительность», «фильм 2», «время начала», «длительность»;
*/

SELECT
m.movies_name AS movie1,
s.sessions_begining_time AS begining_time,
m.movies_duration AS duration,
m2.movies_name AS movie2,
s2.sessions_begining_time AS begining_time,
m2.movies_duration AS duration
FROM sessions_tbl s
JOIN movies_tbl m ON s.movies_id = m.id
JOIN sessions_tbl s2 ON s2.sessions_begining_time > s.sessions_begining_time 
AND s2.sessions_begining_time < date_add(s.sessions_begining_time, INTERVAL m.movies_duration HOUR_SECOND)
JOIN movies_tbl m2 ON s2.movies_id = m2.id
ORDER BY s.sessions_begining_time ASC;