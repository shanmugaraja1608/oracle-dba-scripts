/*
Author  : Shanmuga Raja
Purpose : Identify long running active sessions
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    s.sid,
    s.serial#,
    s.username,
    s.status,
    s.osuser,
    s.machine,
    s.program,
    s.logon_time,
    ROUND((SYSDATE - s.logon_time) * 24 * 60, 2) AS runtime_minutes
FROM v$session s
WHERE s.status = 'ACTIVE'
ORDER BY runtime_minutes DESC;

