/*
Author  : Shanmuga Raja
Purpose : Overall Oracle database health overview
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    d.name AS db_name,
    d.open_mode,
    d.database_role,
    d.log_mode,
    d.force_logging,
    d.flashback_on,
    d.dataguard_broker
FROM v$database d;
