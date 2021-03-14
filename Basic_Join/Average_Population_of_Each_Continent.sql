select country.continent,floor(avg(city.population)) from city inner join country on  city.CountryCode = country.Code group by country.continent;
