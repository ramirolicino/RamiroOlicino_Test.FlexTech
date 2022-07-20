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

SELECT *, CASE WHEN ( VALUE % 2 = 0 ) THEN ('PAR') ELSE ('IMPAR') END AS VALOR FROM Numeros;
		




GO
--Elimina la tabla
DROP  TABLE Numeros;