#!/bin/bash

cat <<END > /jira-home/dbconfig.xml
<?xml version="1.0" encoding="UTF-8"?>
<jira-database-config>
  <name>defaultDS</name>
  <delegator-name>default</delegator-name>
  <database-type>postgres72</database-type>
  <schema-name>public</schema-name>
  <jdbc-datasource>
    <url>jdbc:postgresql://$POSTGRESQL_PORT_5432_TCP_ADDR:$POSTGRESQL_PORT_5432_TCP_PORT/$POSTGRESQL_ENV_DB_NAME</url>
    <driver-class>org.postgresql.Driver</driver-class>
    <username>$POSTGRESQL_ENV_DB_USER</username>
    <password>$POSTGRESQL_ENV_DB_PASS</password>
    <pool-min-size>20</pool-min-size>
    <pool-max-size>20</pool-max-size>
    <pool-max-wait>30000</pool-max-wait>
    <pool-max-idle>20</pool-max-idle>
    <pool-remove-abandoned>true</pool-remove-abandoned>
    <pool-remove-abandoned-timeout>300</pool-remove-abandoned-timeout>
  </jdbc-datasource>
</jira-database-config>
END

sed -i "s/<Connector /<Connector scheme=\"https\" proxyPort=\"443\" proxyName=\"$PROXY_NAME\" /g" /jira/conf/server.xml

exec /jira/bin/start-jira.sh -fg
