/*
Author  : Shanmuga Raja
Purpose : Check overall Oracle Data Guard configuration and database status
Version : Oracle 19c / 21c / 23ai
*/

SELECT 
    d.name AS database_name,
    d.db_unique_name,
    d.database_role,
    d.open_mode,
    d.log_mode,
    d.force_logging,
    d.flashback_on,
    d.dataguard_broker
FROM v$database d;
