SELECT
  year,
   ROUND(SUM(renewable),4) AS total_renewable,
   ROUND(SUM(coal),4) AS total_coal,
   ROUND(SUM(nuclear_power),4) AS total_nuclear,
   ROUND(SUM(crude_oil),4) AS total_crude_oil,
   ROUND(SUM(natural_gas),4) AS natural_gas
FROM
  `practice-sql-452623.energy.total_energy_production`
GROUP BY year
ORDER BY year