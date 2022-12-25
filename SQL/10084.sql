with data_centers AS (
    select *, 'europe' as continent from fb_eu_energy
    UNION ALL
    select *, 'north america' as continent from fb_na_energy
    UNION ALL
    select *, 'asia' as continent from fb_asia_energy)
    
select date, SUM(SUM(consumption)) OVER(order by date) as cumulative_total_energy, ROUND(SUM(SUM(consumption)) OVER(order by date) / SUM(SUM(consumption)) OVER(),2) * 100 as percentage_of_total_energy from data_centers
GROUP BY date
ORDER BY date