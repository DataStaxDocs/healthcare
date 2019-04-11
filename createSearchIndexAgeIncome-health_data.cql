// START-create-search-index-age-income-health_data
CREATE SEARCH INDEX ON healthcare.health_data 
WITH COLUMNS * {excluded:false}, age_months, monthly_income_total {excluded: true} ;
// END-create-search-index-age-income-health_data
