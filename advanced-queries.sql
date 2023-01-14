--Advanced SQL queries.
--Temperature, Windspeed and Precipitation for La Guardia and JFK, in desc order by date and asc order by station ID
--Dataset: `bigquery-public-data.noaa_gsod.gsod2020`
SELECT
  stn,
  date,
  IF(
    temp = 9999.9,
    NULL,
    temp
  ) AS temperature,
  IF(
    wdsp = '999.9',
    NULL,
    wdsp
  ) AS wind_speed,
  IF(
    prcp = 99.99,
    NULL,
    prcp
  ) AS precipitation
FROM
  `bigquery-public-data.noaa_gsod.gsod2020`
WHERE
  stn = "725030" --La Guardia 
  OR
  stn = "744860" -- JFK
ORDER BY
  date DESC,
  stn ASC