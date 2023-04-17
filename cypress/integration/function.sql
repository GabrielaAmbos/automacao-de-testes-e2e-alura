CREATE FUNCTION calcular_salarios_minimos(@salario DECIMAL(10,2), @salario_minimo DECIMAL(10,2))
RETURNS INT
AS
BEGIN
    DECLARE @num_salarios_minimos INT;
    SET @num_salarios_minimos = CAST(@salario AS INT) / CAST(@salario_minimo AS INT);
    RETURN @num_salarios_minimos;
END;


UPDATE FUNCIONARIOS
SET SALARIO_MINIMO = dbo.calcular_salarios_minimos(SALARIO, 788.00)