SELECT 
    DISTINCT business_name, array_length(regexp_split_to_array(regexp_replace, '\s+'),1) 
    FROM(
        SELECT business_name, regexp_replace(business_name, '[^a-zA-Z0-9 ]', '', 'g') 
        FROM sf_restaurant_health_violations
    ) a