# healthcare

Sample files for the DataStax healthcare demo.

## Demo files

The healthcare demo includes:

* CSV sample data file in a zip
* Several individual CQL command files
* A configuration file used with the `dsbulk` command
* A script to run the demo

The demo performs the following:

1. Creates a keyspace named `healthcare`
2. Creates a table named `healthcare.health_data`
3. Creates a search index for the table
4. Loads the table with 20,500 rows of CSV sample data via a `dsbulk load` command
5. Alters the table's search index to use  `config.queryExecutorThreads=4`
6. Exits

## Steps

1. Clone this repo
2. Copy the files to a DSE cluster that includes a node defined with a search workload
3. On the search node, unzip the health_data.csv.zip file
4. In the same directory, run the script with a command such as:

`./threadsDemo-health_data.sh`


