SELECT SUM(CITY.POPULATION) FROM CITY LEFT JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.Code WHERE COUNTRY.CONTINENT = 'Asia';
