USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Numeros
(
	[ID] [int] NOT NULL,
	[VALUE] [varchar](255) NOT NULL,
)


GO
--Carga de registros
INSERT INTO Numeros(ID, VALUE)
VALUES
(1, 4),	
(2, 11),
(3, 57),
(4, 24),
(5, 47);

GO
SELECT * FROM Numeros;


-- Ej4 --


--Determino si el numero del registro es par o no mediante %, que si retorna 0, es decir el resto es 0, es par, viceversa es impar
SELECT *, CASE WHEN ( VALUE % 2 = 0 ) THEN ('PAR') ELSE ('IMPAR') END AS VALOR FROM Numeros;
		




--Elimina la tabla
GO
DROP  TABLE Numeros;