/*
Author  : Shanmuga Raja
Purpose : Check whether Data Guard Broker is enabled
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    dataguard_broker
FROM v$database;
