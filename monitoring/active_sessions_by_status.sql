/*
Author  : Shanmuga Raja
Purpose : Monitor active database sessions by status
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    status,
    COUNT(*) AS session_count
FROM v$session
GROUP BY status;
