USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[AGE] [int] NOT NULL,
)


GO
--Carga de registros
INSERT INTO Personas(ID, NAME, AGE)
VALUES
(1, 'Bob', 21),
(2, 'Sam', 19),
(3, 'Jill', 18),
(4, 'Jim', 21),
(5, 'Sally', 19),
(6, 'Jess', 20),
(7, 'Will', 21);

GO
SELECT * FROM Personas;


-- Ej5 --

SELECT	p.AGE ,COUNT(*) AS COUNT
	FROM Personas p
	GROUP BY p.AGE



GO
--Elimina la tabla
DROP  TABLE Personas;