// START-change-threads-health_data
ALTER SEARCH INDEX CONFIG ON healthcare.health_data SET config.queryExecutorThreads=4;
// END-change-threads-health_data

// Next: run (optional) describePendingSearchIndex-health_data.cql 
// and then reloadSearchIndex-health_data.cql
