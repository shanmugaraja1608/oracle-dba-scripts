/*
Author  : Shanmuga Raja
Purpose : Identify obsolete RMAN backups based on retention policy
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    recid,
    stamp,
    completion_time,
    status
FROM v$backup_piece
WHERE obsolete = 'YES'
ORDER BY completion_time;
