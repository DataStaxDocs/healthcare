#!/bin/bash
# Setup and run queryMultithreads demo with health_data
# Script: creates keyspace; creates table; loads table; creates search index; changes / verifies queryExecutorThreads.

# Required files from zip:
# 0_create_keyspace.cql
# createTable-health_data.cql
# createSearchIndex-health_data.cql
# setQueryMultiThreads-health_data.cql
# describePendingSearchIndex-health_data.cql
# reloadSearchIndex-health_data.cql
# describeActiveSearchIndex-health_data.cql

echo "Create healthcare keyspace"
cqlsh -e "source '0_create_keyspace.cql'"
echo "Keyspace healthcare created"

echo "Create health_data table"
cqlsh -e "USE healthcare;"
cqlsh -e "DROP TABLE IF EXISTS healthcare.health_data;"
cqlsh -e "source 'createTable-health_data.cql'"
echo "health_data table created"

echo "Use dsbulk to load data"
dsbulk load -f dsbulkConfigFile.conf -url health_data.csv -k healthcare -t health_data -header false --schema.allowExtraFields true --schema.allowMissingFields true
echo "health_data table data loaded using dsbulk"

echo "Create search index"
cqlsh -e "source 'createSearchIndex-health_data.cql'"
echo "Search index created"

echo "Set queryMultiThreads value to 4"
cqlsh -e "source 'setQueryMultiThreads-health_data.cql'"
echo "queryMultiThreads set to 4"

echo "Describe pending search index config"
cqlsh -e "source 'describePendingSearchIndex-health_data.cql'"

echo "Reload search index config"
cqlsh -e "source 'reloadSearchIndex-health_data.cql'"
echo "Search index config reloaded"

echo "Describe active search index config"
cqlsh -e "source 'describeActiveSearchIndex-health_data.cql'"

echo "Done"
