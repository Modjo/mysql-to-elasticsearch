# mysql-to-elasticsearch
## Automatic conversion of structured data (MySQL) into a valid JSON schema that Elasticsearch can use.

If you ever wanted to use Elasticsearch with your (My)SQL database, I show you here how to do it.
The aim of this repo is to give you a good example of how you can transform your data from your relational database (MySQL in this case), and pass them to Logstash that will transform them in a valid NoSQL schema that Elasticsearch will be using.
Logstash will use the JDBC input plugin. This plugin will transform our structured data.
We will then modify a little bit these data using a filter plugin and then pass them to the elasticsearch output plugin.
At the end you would be able to look up the data with Kibana.

Before using it as is, you just need to dump the following ````mydatabase.sql````file into the ````db```` container. I would advise you to:
1. Launch docker a first time. Type ````docker-compose up -d````
2. Connect to MySQL with ````mysql -u root -p````. Password is ````mypassword````
3. Create the ````mydatabase```` database and dump the ````mydatabase.sql```` from the repo
4. Once it is done, close the service with ````docker-compose down````
5. Relaunch everything : ````docker-compose up````

Everything is automated, the only thing you need to do is to clone this repo, go to the root folder, dump the database (see above) and do ````docker-compose up````

:rocket: Enjoy ! :+1:
