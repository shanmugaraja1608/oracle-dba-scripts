/*
Author  : Shanmuga Raja
Purpose : Verify Data Guard protection mode and protection level
Version : Oracle 19c / 21c / 23ai
*/

SELECT 
    protection_mode,
    protection_level
FROM v$database;
