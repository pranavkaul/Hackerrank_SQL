SET @ROWINDEX := -1;
SELECT ROUND(AVG(N.LAT_N),4) FROM
(SELECT @ROWINDEX := @ROWINDEX + 1 AS ROWINDEX, STATION.LAT_N AS LAT_N FROM STATION ORDER BY STATION.LAT_N) AS N
WHERE N.ROWINDEX IN (FLOOR(@ROWINDEX/2),CEIL(@ROWINDEX/2));



Oracle Soluton:-
SELECT ROUND(MEDIAN(LAT_N),4) FROM STATION;

