-- Intentionally NO EXIT at the end

CREATE OR REPLACE PROCEDURE test_hang_proc AS
BEGIN
    -- Intentional error: table does not exist
    INSERT INTO table_does_not_exist VALUES (1);
END;
/

-- Do not show errors
-- Do not exit
-- SQL*Plus will return to prompt and wait forever
