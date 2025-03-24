SELECT
  year,
  state,
   (ROUND(SUM(renewable),4)*293.1) AS total_renewable_mwh,
   (ROUND(SUM(coal),4)*293.1) AS total_coal_mwh,
   (ROUND(SUM(nuclear_power),4)*293.1) AS total_nuclear_mwh,
   (ROUND(SUM(crude_oil),4)*293.1)AS total_crude_oil_mwh,
   (ROUND(SUM(natural_gas),4)*293.1) AS natural_gas_mwh,

FROM
  `practice-sql-452623.energy.total_energy_production`
GROUP BY year, state
ORDER BY year