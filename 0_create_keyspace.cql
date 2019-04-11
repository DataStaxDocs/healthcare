// START-create-ks
CREATE KEYSPACE IF NOT EXISTS healthcare 
 WITH replication = {'class': 'SimpleStrategy', 'replication_factor':1};
// END-create-ks

USE healthcare;
