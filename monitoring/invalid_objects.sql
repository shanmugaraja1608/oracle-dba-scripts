/*
Author  : Shanmuga Raja
Purpose : Check invalid database objects
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    owner,
    object_type,
    COUNT(*) AS invalid_count
FROM dba_objects
WHERE status = 'INVALID'
GROUP BY owner, object_type
ORDER BY invalid_count DESC;
