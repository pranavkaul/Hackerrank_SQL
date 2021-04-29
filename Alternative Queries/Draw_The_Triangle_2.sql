SET @variable = 0;
SELECT repeat('* ', @variable := @variable + 1) FROM information_schema.tables WHERE @variable<20;
