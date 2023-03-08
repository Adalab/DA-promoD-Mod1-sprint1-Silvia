USE `sportsanalytics`;

-- Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons.

SELECT `TEAM_ID`, MAX(`WIN_PERCENT`) AS `VictoriaMaxima`, MIN(`WIN_PERCENT`) AS `VictoriaMinima`
FROM `stats`
GROUP BY `TEAM_ID`;

/* Aunque el ejercicio indica buscar los datos en la tabla seasons, en la tabla seasons solo tenemos los datos de season_id y el nombre de la temporada.
Se asume que es un error y que se nos piden los datos contenidos en la tabla stats; los resultados se pueden comprobar al ejecutar la consulta. */

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Obtén los primeros 10 resultados de la tabla de teams

SELECT *
FROM `teams`
LIMIT 10;

/* Los equipos son: Atlanta Hawks, Boston Celtics, Brooklyn Nets, Chicago Bulls, Denver Nuggets, Detroit Pistons, Charlotte Hornets, 
Cleveland Cavaliers, Dallas Mavericks, Golden State Warriors
*/

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats.

SELECT *
FROM `stats`
WHERE `W` BETWEEN 20 AND 30
ORDER BY `TEAM_ID`;

/*En esta consulta obtenemos todos los registros entre 20 y 30 victorias para todas las temporadas. Ordenamos por TEAM_ID para obtener las victorias de 
los equipos y ver los diferentes datos por temporadas*/

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Realiza un cuenteo de número total de equipos que existen en la tabla teams.

SELECT COUNT(`TEAM_ID`)
FROM `teams`;

/*Según la consulta, tenemos 30 equipos diferentes en la tabla teams*/

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Calcula la media de todos los puntos conseguidos de la tabla stats.

SELECT ROUND(AVG(`PTS`), 2)
FROM `stats`;

/* La media de puntos conseguidos es 109.38, si redondeamos a dos decimales */

/*--------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos con la media de puntos como diferencia_media de la tabla stats.

SELECT MAX(`W`), MAX(`PTS`), ROUND((MAX(`PTS`) - AVG(`PTS`)), 2) AS  `Diferencia_Media`
FROM `stats`;

/* El máximo de victorias es 67, el máximo de puntos es 120.1 y la diferencia es DE 10.72 puntos entre el máximo y la media*/ 
