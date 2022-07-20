CREATE DATABASE [FlexTech_DB];
GO
USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Numeros
(
	[ID] [int] NOT NULL,
	[VALUE] [INT] NOT NULL,
)


GO
--Carga de registros
INSERT INTO Numeros(ID, VALUE)
VALUES
(1, -54),
(2, 76),
(3, -84),
(4, 96),
(5, -47);

GO
SELECT * FROM Numeros;


-- Ej1 --

SELECT CASE WHEN ( VALUE > 0 ) THEN (VALUE * -1) ELSE (VALUE * -1) END AS VALUE FROM Numeros;



GO
--Elimina la tabla
DROP  TABLE Numeros;
















