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


-- Ej10 --


--Utilizando SUM(), muestro el total de las edades
SELECT SUM(p.AGE) AS SumaEdades
	FROM Personas p







--Elimina la tabla
GO
DROP  TABLE Personas;