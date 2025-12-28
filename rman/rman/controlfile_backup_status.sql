/*
Author  : Shanmuga Raja
Purpose : Verify RMAN controlfile backup availability
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    handle,
    completion_time,
    status
FROM v$backup_controlfile
ORDER BY completion_time DESC;
