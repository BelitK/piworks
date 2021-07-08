UPDATE country_vaccination_stats
SET daily_vaccinations = SELECT PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY country) FROM data Group BY country

WHERE daily_vaccinations = NaN;