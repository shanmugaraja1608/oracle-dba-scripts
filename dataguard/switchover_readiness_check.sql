/*
Author  : Shanmuga Raja
Purpose : Check switchover readiness and current switchover status
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    database_role,
    switchover_status,
    CASE switchover_status
        WHEN 'TO STANDBY' THEN 'Primary is ready for switchover'
        WHEN 'TO PRIMARY' THEN 'Standby is ready for switchover'
        WHEN 'SESSIONS ACTIVE' THEN 'Close active sessions before switchover'
        WHEN 'NOT ALLOWED' THEN 'Switchover not allowed'
        WHEN 'RESOLVABLE GAP' THEN 'Resolve archive gap'
        ELSE 'Check Data Guard configuration'
    END AS readiness_message
FROM v$database;
