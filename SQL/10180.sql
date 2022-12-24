select facility_name, min(score) FROM los_angeles_restaurant_health_inspections
WHERE facility_address ILIKE '%Hollywood%'
GROUP BY facility_name