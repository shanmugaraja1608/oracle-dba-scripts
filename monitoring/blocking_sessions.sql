/*
Author  : Shanmuga Raja
Purpose : Identify blocking and blocked sessions
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    s.sid,
    s.serial#,
    s.username,
    s.blocking_session,
    s.status,
    s.event
FROM v$session s
WHERE s.blocking_session IS NOT NULL;
