SET @number := 21
SELECT repeat('* ', @number = @number - 1) FROM information_schema.tables;

