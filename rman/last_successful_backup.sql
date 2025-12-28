/*
Author  : Shanmuga Raja
Purpose : Identify last successful RMAN backup for datafiles
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    df.file#,
    df.name,
    MAX(bp.completion_time) AS last_backup_time
FROM v$datafile df
JOIN v$backup_piece bp ON bp.status = 'A'
GROUP BY df.file#, df.name
ORDER BY last_backup_time DESC;
