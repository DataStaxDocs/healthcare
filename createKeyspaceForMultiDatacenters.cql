// START-create-multi-dc-ks
CREATE KEYSPACE IF NOT EXISTS healthcare 
WITH replication = {
    'class': 'NetworkTopologyStrategy', 
    'Cassandra': '1', 
    'Solr': '1'};
// END-create-multi-dc-ks

USE healthcare;
