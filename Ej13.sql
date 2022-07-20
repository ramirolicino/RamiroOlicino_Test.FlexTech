USE [FlexTech_DB];
GO
--Creacion Tabla
CREATE TABLE [FlexTech_DB].dbo.Personas
(
	[ID] [int] NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[AGE] [int] NOT NULL,

	PRIMARY KEY(ID)
)



GO
--Carga de registros
INSERT INTO Personas(ID, NAME, AGE)
VALUES
(1,'Bob', 21),
(2,'Sam', 19),
(3,'Jill', 18),
(4,'Jim', 21),
(5,'Sally', 19),
(6,'Jess', 20),
(7,'Will', 21);

GO
SELECT * FROM Personas;


-- Ej13 --
GO
CREATE PROCEDURE cantidad
  @edad INT = 0
  AS
  SELECT p.AGE ,COUNT(*) AS COUNT
	FROM Personas p
	WHERE p.AGE = @edad
	GROUP BY p.AGE;

GO
EXECUTE cantidad 21;





--Elimina la tabla
GO
DROP TABLE Personas;

GO
DROP PROCEDURE cantidad