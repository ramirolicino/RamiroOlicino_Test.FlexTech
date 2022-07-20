USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Siglo
(
	[ID] [int] NOT NULL,
	[YEAR] [INT] NOT NULL,
)


GO
--Carga de registros
INSERT INTO Siglo(ID, YEAR)
VALUES
(1, 1776),	
(2, 2001),
(3, 1643),
(4, 1865),
(5, 1969);

GO
SELECT * FROM Siglo;


-- Ej3 --

SELECT *, (YEAR + 99) / 100 AS "SIGLO" FROM Siglo;
		




GO
--Elimina la tabla
DROP  TABLE Siglo;