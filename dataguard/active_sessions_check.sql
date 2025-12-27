/*
Author  : Shanmuga Raja
Purpose : Check active user sessions before Data Guard switchover
Version : Oracle 19c / 21c / 23ai
*/

SELECT COUNT(*) AS active_sessions
FROM v$session
WHERE username IS NOT NULL;
