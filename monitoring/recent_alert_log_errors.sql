/*
Author  : Shanmuga Raja
Purpose : Check recent ORA errors from alert log
Version : Oracle 19c / 21c / 23ai
*/

SELECT
    originating_timestamp,
    message_text
FROM v$diag_alert_ext
WHERE message_text LIKE 'ORA-%'
ORDER BY originating_timestamp DESC
FETCH FIRST 50 ROWS ONLY;
