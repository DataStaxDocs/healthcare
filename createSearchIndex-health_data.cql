// START-create-search-index-health_data
CREATE SEARCH INDEX IF NOT EXISTS ON healthcare.health_data WITH COLUMNS id, age {excluded : false};
// END-create-search-index-health_data
